package com.boot.security.server.controller;

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
import com.boot.security.server.dao.WxBulletDao;
import com.boot.security.server.model.WxBullet;

import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/wxBullets")
public class WxBulletController {

    @Autowired
    private WxBulletDao wxBulletDao;

    @PostMapping
    @ApiOperation(value = "保存")
    public WxBullet save(@RequestBody WxBullet wxBullet) {
        wxBulletDao.save(wxBullet);

        return wxBullet;
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "根据id获取")
    public WxBullet get(@PathVariable Long id) {
        return wxBulletDao.getById(id);
    }

    @PutMapping
    @ApiOperation(value = "修改")
    public WxBullet update(@RequestBody WxBullet wxBullet) {
        wxBulletDao.update(wxBullet);

        return wxBullet;
    }

    @GetMapping
    @ApiOperation(value = "列表")
    public PageTableResponse list(PageTableRequest request) {
        return new PageTableHandler(new CountHandler() {

            @Override
            public int count(PageTableRequest request) {
                return wxBulletDao.count(request.getParams());
            }
        }, new ListHandler() {

            @Override
            public List<WxBullet> list(PageTableRequest request) {
                return wxBulletDao.list(request.getParams(), request.getOffset(), request.getLimit());
            }
        }).handle(request);
    }

    @DeleteMapping("/{id}")
    @ApiOperation(value = "删除")
    public void delete(@PathVariable Long id) {
        wxBulletDao.delete(id);
    }
}
