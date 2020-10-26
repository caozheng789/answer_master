package com.boot.security.server.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.boot.security.server.dao.WxUserDao;
import com.boot.security.server.dto.Token;
import com.boot.security.server.model.WxUser;
import com.boot.security.server.result.ResultData;
import com.boot.security.server.service.TokenService;
import com.boot.security.server.utils.AuthUtil;
import io.swagger.models.Model;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;

/**
 * @author zheng
 */
@Slf4j
@Controller
@RequestMapping("wechat")
@AllArgsConstructor
public class WxController {

    public static final String TOKEN_KEY = "wxToken";

    private final WxUserDao wxMapper;

    @Autowired
    private TokenService tokenService;

    private static final Long MINUTES_10 = 10 * 60 * 1000L;


    @GetMapping(value="wxlogin")
    public void wx(HttpServletRequest request,HttpServletResponse response) throws IOException {

        String token = getToken(request);
        if (StringUtils.isNotBlank(token)) {
            WxUser loginUser = tokenService.getLoginWxUser(token);
            if (loginUser != null) {
                loginUser = checkLoginTime(loginUser);
                response.sendRedirect("http://www.baidu.com");
                return;
            }
        }
        //第一步：引导用户进入授权页面同意授权，获取code
        StringBuilder builder = new StringBuilder("https://open.weixin.qq.com/connect/oauth2/authorize?appid=");
        builder.append(AuthUtil.APPID);
        builder.append("&redirect_uri=");
        //开发文档要求转换
        builder.append(URLEncoder.encode(AuthUtil.backUrl));
        builder.append("&response_type=code");
        builder.append("&scope=snsapi_userinfo");
        builder.append("&state=STATE#wechat_redirect");
        //授权页面地址
        //将StringBuilder转换成String
        String url=builder.toString();
        System.out.println(url);
        //重定向到授权页面
        response.sendRedirect(url);
    }


    @ResponseBody
    @GetMapping(value="callBack")
    public ResultData wxcallback(@RequestParam("code") String code, Model model)throws IOException {
        System.out.println("code:" + code);
        //获取code后，请求以下链接获取access_token
        StringBuilder builder = new StringBuilder("https://api.weixin.qq.com/sns/oauth2/access_token?appid=");
        builder.append(AuthUtil.APPID);
        builder.append("&secret=");
        builder.append(AuthUtil.APPSECRET);
        builder.append("&code=");
        builder.append(code);
        builder.append("&grant_type=authorization_code");

        //通过网络请求方法来请求上面这个接口
        //将StringBuilder转换成String
        String url=builder.toString();
        JSONObject jsonObject = AuthUtil.doGetJson(url);

        System.out.println("==========================jsonObject" + jsonObject);
        //从返回的JSON数据中取出access_token和openid，拉取用户信息时用
        String token = jsonObject.getString("access_token");
        String openid = jsonObject.getString("openid");

        // 第三步：刷新access_token（如果需要）

        // 第四步：拉取用户信息(需scope为 snsapi_userinfo)
        StringBuilder builder1 = new StringBuilder("https://api.weixin.qq.com/sns/userinfo?access_token=");
        builder1.append(token);
        builder1.append("&openid=");
        builder1.append(openid);
        builder1.append("&lang=zh_CN");
        //通过网络请求方法来请求上面这个接口
        //将StringBuilder转换成String
        String infoUrl=builder1.toString();
        JSONObject userInfo = AuthUtil.doGetJson(infoUrl);

        System.out.println("userInfo=======" + userInfo);
        WxUser wxUser = JSON.toJavaObject(userInfo, WxUser.class);
        //第1种情况：使用微信用户信息直接登录，无需注册和绑定
//        model.addAttribute("info",userInfo);
//        return "wx/wxtest1";

        //第2种情况：查看数据库是否存在相对应用户
        WxUser wUser = wxMapper.findnameByopenId(openid);
        if (null == wUser) {
            //未绑定 去绑定，然后发一个token
            try {
                wxMapper.save(wxUser);
            } catch (Exception e) {
                log.error("保存用户信息失败{}",e.getMessage());
                return ResultData.error("保存用户信息失败");
            }
        }
        //已绑定 直接给前端 发送 token
        Token token1 = tokenService.saveWxToken(wxUser);
        return ResultData.success(token1);
    }


    /**
     * 根据参数或者header获取token
     *
     * @param request
     * @return
     */
    public static String getToken(HttpServletRequest request) {
        String token = request.getParameter(TOKEN_KEY);
        if (StringUtils.isBlank(token)) {
            token = request.getHeader(TOKEN_KEY);
        }
        return token;
    }

    /**
     * 校验时间<br>
     * 过期时间与当前时间对比，临近过期10分钟内的话，自动刷新缓存
     *
     * @param loginUser
     * @return
     */
    private WxUser checkLoginTime(WxUser loginUser) {
        long expireTime = loginUser.getExpireTime();
        long currentTime = System.currentTimeMillis();
        if (expireTime - currentTime <= MINUTES_10) {
            String token = loginUser.getToken();
            loginUser = wxMapper.findnameByopenId(loginUser.getOpenid());
            loginUser.setToken(token);
            tokenService.refresh(loginUser);
        }
        return loginUser;
    }

}



