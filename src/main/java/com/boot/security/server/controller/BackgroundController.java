package com.boot.security.server.controller;

import java.util.Date;
import java.util.List;

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
import com.boot.security.server.dao.BackgroundDao;
import com.boot.security.server.model.Background;

import io.swagger.annotations.ApiOperation;

/**
 * @author zheng
 */
@RestController
@RequestMapping("/backgrounds")
public class BackgroundController {

    @Autowired
    private BackgroundDao backgroundDao;

    @PostMapping
    @ApiOperation(value = "保存")
    public Background save(@RequestBody Background background) {
        backgroundDao.save(background);
        return background;
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "根据id获取")
    public Background get(@PathVariable Long id) {
        return backgroundDao.getById(id);
    }

    @PutMapping
    @ApiOperation(value = "修改")
    public Background update(@RequestBody Background background) {

        background.setCreateTime(new Date());
        backgroundDao.update(background);

        return background;
    }

    @GetMapping
    @ApiOperation(value = "列表")
    public PageTableResponse list(PageTableRequest request) {
        return new PageTableHandler(new CountHandler() {

            @Override
            public int count(PageTableRequest request) {
                return backgroundDao.count(request.getParams());
            }
        }, new ListHandler() {

            @Override
            public List<Background> list(PageTableRequest request) {
                return backgroundDao.list(request.getParams(), request.getOffset(), request.getLimit());
            }
        }).handle(request);
    }

    @DeleteMapping("/{id}")
    @ApiOperation(value = "删除")
    public void delete(@PathVariable Long id) {
        backgroundDao.delete(id);
    }
}
