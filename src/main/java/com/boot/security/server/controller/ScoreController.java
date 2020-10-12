package com.boot.security.server.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import com.boot.security.server.result.ResultData;
import com.boot.security.server.utils.NewImageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.boot.security.server.page.table.PageTableRequest;
import com.boot.security.server.page.table.PageTableHandler;
import com.boot.security.server.page.table.PageTableResponse;
import com.boot.security.server.page.table.PageTableHandler.CountHandler;
import com.boot.security.server.page.table.PageTableHandler.ListHandler;
import com.boot.security.server.dao.ScoreDao;
import com.boot.security.server.model.Score;

import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/scores")
public class ScoreController {

    @Autowired
    private ScoreDao scoreDao;

    @PostMapping("share")
    public ResultData saveShare(String waterFilePath) throws IOException {

        String sourceFilePath = "D:\\5.jpg";
//        String waterFilePath = "D:\\4.jpg";
        String saveFilePath = "e:\\files\\"+ System.currentTimeMillis() + Math.random()*100+101 +".jpg";
        NewImageUtils newImageUtils = new NewImageUtils();
        // 构建叠加层
        BufferedImage buffImg = NewImageUtils.watermark(new File(sourceFilePath), new File(waterFilePath), 37, 37, 1.0f);
        // 输出水印图片
        newImageUtils.generateWaterFile(buffImg, saveFilePath);
        return ResultData.success(saveFilePath);
    }


    @PostMapping
    @ApiOperation(value = "保存")
    public Score save(@RequestBody Score score) {
        scoreDao.save(score);

        return score;
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "根据id获取")
    public Score get(@PathVariable Long id) {
        return scoreDao.getById(id);
    }

    @PutMapping
    @ApiOperation(value = "修改")
    public Score update(@RequestBody Score score) {
        score.setCreateTime(new Date());
        scoreDao.update(score);
        return score;
    }

    @GetMapping
    @ApiOperation(value = "列表")
    public PageTableResponse list(PageTableRequest request) {
        return new PageTableHandler(new CountHandler() {

            @Override
            public int count(PageTableRequest request) {
                return scoreDao.count(request.getParams());
            }
        }, new ListHandler() {

            @Override
            public List<Score> list(PageTableRequest request) {
                return scoreDao.list(request.getParams(), request.getOffset(), request.getLimit());
            }
        }).handle(request);
    }

    @DeleteMapping("/{id}")
    @ApiOperation(value = "删除")
    public void delete(@PathVariable Long id) {
        scoreDao.delete(id);
    }
}
