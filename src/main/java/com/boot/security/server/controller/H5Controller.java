package com.boot.security.server.controller;

import com.boot.security.server.annotation.LogAnnotation;
import com.boot.security.server.dao.PaperDetailDao;
import com.boot.security.server.dao.ScoreDao;
import com.boot.security.server.dao.WxBulletDao;
import com.boot.security.server.model.FileInfo;
import com.boot.security.server.model.Paperdetail;
import com.boot.security.server.model.Score;
import com.boot.security.server.model.WxBullet;
import com.boot.security.server.page.table.PageTableHandler;
import com.boot.security.server.page.table.PageTableRequest;
import com.boot.security.server.page.table.PageTableResponse;
import com.boot.security.server.result.ResultData;
import com.boot.security.server.service.FileService;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import sun.misc.BASE64Decoder;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * H5接口
 * @author zheng
 */
@Slf4j
@RestController
@AllArgsConstructor
@RequestMapping("h5")
public class H5Controller {

    private final PaperDetailDao detailDao;

    private final FileService fileService;

    private final WxBulletDao wxBulletDao;

    private final ScoreDao scoreDao;

    /**
     * 获取试卷
     * @return
     */
    @GetMapping("getPaper")
    public ResultData getPaper(){
        List<Paperdetail> paper = null;
        try {
            paper = detailDao.getPaper();
        } catch (Exception e) {
            log.error("获取试卷失败=getPaper{}", e.getMessage());
            return ResultData.error("获取试卷失败");
        }
        return ResultData.success(paper);
    }

    /**
     * 上传图片
     * @return
     */
    @PostMapping("file")
    public ResultData uploadFile(MultipartFile file){
        FileInfo save = null;
        try {
            save = fileService.save(file);
        } catch (Exception e) {
            log.error("上传图片=file{}", e.getMessage());
            return ResultData.error("上传图片失败");
        }
        return ResultData.success(save);
    }

    /**
     * 获取弹幕
     */
    @GetMapping("getBullets")
    public ResultData getBullets(PageTableRequest request){


        PageTableResponse handle = new PageTableHandler(PageTableHandler -> wxBulletDao.count(request.getParams()),
                PageTableHandler -> wxBulletDao.getBulletList(request.getParams(), request.getOffset(), request.getLimit())).handle(request);

        return ResultData.success(handle);

    }

    /**
     * 发送弹幕
     */

    @PostMapping("sendBullets")
    @Transactional(rollbackFor = Exception.class)
    public ResultData sendBullets(@RequestBody WxBullet wxBullet){
        try {
            wxBulletDao.save(wxBullet);
        } catch (Exception e) {
            log.error("发送弹幕=file{}", e.getMessage());
            return ResultData.error("发送弹幕失败");
        }
        return ResultData.success("发送成功");
    }


    @PostMapping("/base64Upload")
    public ResultData uploadImage(Integer userId,String base64Data){

        //base64格式前头
        String dataPrix = "";
        //实体部分数据
        String data = "";
        if(base64Data==null||"".equals(base64Data)){
            return ResultData.error("上传失败，上传图片数据为空");
        }else {
            String [] d = base64Data.split("base64,");//将字符串分成数组
            if(d != null && d.length == 2){
                dataPrix = d[0];
                data = d[1];
            }else {
                return ResultData.error("上传失败，数据不合法");
            }
        }
        String suffix = "";//图片后缀，用以识别哪种格式数据
        //data:image/jpeg;base64,base64编码的jpeg图片数据
        if("data:image/jpeg;".equalsIgnoreCase(dataPrix)){
            suffix = ".jpg";
        }else if("data:image/x-icon;".equalsIgnoreCase(dataPrix)){
            //data:image/x-icon;base64,base64编码的icon图片数据
            suffix = ".ico";
        }else if("data:image/gif;".equalsIgnoreCase(dataPrix)){
            //data:image/gif;base64,base64编码的gif图片数据
            suffix = ".gif";
        }else if("data:image/png;".equalsIgnoreCase(dataPrix)){
            //data:image/png;base64,base64编码的png图片数据
            suffix = ".png";
        }else {
            return ResultData.error("上传图片格式不合法");
        }
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        String tempFileName=uuid+suffix;
        //新生成的图片
        String imgFilePath = "e:/files/" + tempFileName;
        BASE64Decoder decoder = new BASE64Decoder();
        try {
            //Base64解码
            byte[] b = decoder.decodeBuffer(data);
            for(int i=0;i<b.length;++i) {
                if(b[i]<0) {
                    //调整异常数据
                    b[i]+=256;
                }
            }
            OutputStream out = new FileOutputStream(imgFilePath);
            out.write(b);
            out.flush();
            out.close();
            String imgurl="192.168.1.163:8081/statics/"+tempFileName;

            Score score = new Score();
            score.setUid(userId);
            score.setShareUrl(imgurl);
            score.setCreateTime(new Date());
            scoreDao.save(score);
            return ResultData.success("200");
        } catch (IOException e) {
            e.printStackTrace();
            return ResultData.success("上传图片失败");
        }

    }









}
