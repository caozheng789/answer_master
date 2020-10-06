package com.boot.security.server.controller;

import java.util.List;

import com.boot.security.server.dao.PaperDetailDao;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
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
import com.boot.security.server.model.Paperdetail;

import io.swagger.annotations.ApiOperation;

@RestController
@AllArgsConstructor
@RequestMapping("/paperdetails")
public class PaperdetailController {

    private final PaperDetailDao paperDetailDao;

    @PostMapping
    @ApiOperation(value = "保存")
    public Paperdetail save(@RequestBody Paperdetail paperdetail) {
        paperDetailDao.save(paperdetail);

        return paperdetail;
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "根据id获取")
    @PreAuthorize("hasAuthority('paperdetails:query')")
    public Paperdetail get(@PathVariable Long id) {
        return paperDetailDao.getById(id);
    }

    @PutMapping
    @ApiOperation(value = "修改")
    public Paperdetail update(@RequestBody Paperdetail paperdetail) {
        paperDetailDao.update(paperdetail);

        return paperdetail;
    }

    @GetMapping
    @ApiOperation(value = "列表")
    public PageTableResponse list(PageTableRequest request) {
        return new PageTableHandler(new CountHandler() {

            @Override
            public int count(PageTableRequest request) {
                return paperDetailDao.count(request.getParams());
            }
        }, new ListHandler() {

            @Override
            public List<Paperdetail> list(PageTableRequest request) {
                return paperDetailDao.list(request.getParams(), request.getOffset(), request.getLimit());
            }
        }).handle(request);
    }

    @DeleteMapping("/{id}")
    @ApiOperation(value = "删除")
    public void delete(@PathVariable Long id) {
        paperDetailDao.delete(id);
    }
}
