package com.boot.security.server.exception;


import org.springframework.boot.autoconfigure.web.ErrorProperties;
import org.springframework.boot.autoconfigure.web.servlet.error.BasicErrorController;
import org.springframework.boot.web.servlet.error.DefaultErrorAttributes;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * 处理filter抛出的异常
 * @author zheng
 */
@RestController
public class ErrorController extends BasicErrorController {

    public ErrorController() {
        super(new DefaultErrorAttributes(), new ErrorProperties());
    }

    @Override
    @RequestMapping(produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<Map<String, Object>> error(HttpServletRequest request) {
        HttpStatus status = getStatus(request);

        Map<String,Object> map = new HashMap<>(3);
        map.put("code","200");
        map.put("msg","暂无权限");
        map.put("data","");
        return new ResponseEntity<>(map, status);
    }
}

