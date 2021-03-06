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
import com.boot.security.server.dao.WxUserDao;
import com.boot.security.server.model.WxUser;

import io.swagger.annotations.ApiOperation;

/**
 * @author zheng
 */
@RestController
@RequestMapping("wxusers")
public class WxUserController {

    @Autowired
    private WxUserDao wxUserDao;

    @PostMapping
    @ApiOperation(value = "保存")
    public WxUser save(@RequestBody WxUser wxUser) {
        wxUserDao.save(wxUser);

        return wxUser;
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "根据id获取")
    public WxUser get(@PathVariable Long id) {
        return wxUserDao.getById(id);
    }

    @PutMapping
    @ApiOperation(value = "修改")
    public WxUser update(@RequestBody WxUser wxUser) {
        wxUserDao.update(wxUser);

        return wxUser;
    }

    @GetMapping
    @ApiOperation(value = "列表")
    public PageTableResponse list(PageTableRequest request) {
        return new PageTableHandler(new CountHandler() {

            @Override
            public int count(PageTableRequest request) {
                return wxUserDao.count(request.getParams());
            }
        }, new ListHandler() {

            @Override
            public List<WxUser> list(PageTableRequest request) {
                return wxUserDao.list(request.getParams(), request.getOffset(), request.getLimit());
            }
        }).handle(request);
    }

    @DeleteMapping("/{id}")
    @ApiOperation(value = "删除")
    public void delete(@PathVariable Long id) {
        wxUserDao.delete(id);
    }
}
