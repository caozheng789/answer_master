package com.boot.security.server.filter;

import com.boot.security.server.dao.WxUserDao;
import com.boot.security.server.dto.LoginUser;
import com.boot.security.server.exception.AmFilterException;
import com.boot.security.server.model.WxUser;
import com.boot.security.server.service.TokenService;
import lombok.AllArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Token过滤器
 * 
 * @author 阿正 1046802917@qq.com
 *
 *         2017年10月14日
 */
@Component
@AllArgsConstructor
public class WxTokenFilter extends OncePerRequestFilter {

	public static final String TOKEN_KEY = "wxToken";

	@Autowired
	private TokenService tokenService;

	private final WxUserDao wxMapper;

	private static final Long MINUTES_10 = 10 * 60 * 1000L;

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {
		String path = request.getServletPath();
		if (path.contains("h5")){
			String token = getToken(request);
			if (StringUtils.isNotBlank(token)) {
				WxUser loginUser = tokenService.getLoginWxUser(token);
				if (loginUser != null) {
					loginUser = checkLoginTime(loginUser);
				}else{
					throw new RuntimeException("暂无权限");
				}
			}else{
				throw new RuntimeException("暂无权限");

			}
		}
		filterChain.doFilter(request, response);
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

}
