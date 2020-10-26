package com.boot.security.server.exception;

import org.springframework.http.HttpStatus;

import javax.servlet.ServletException;

/**
 * 异常基类
 * @author zheng
 */
public abstract class Am2Exception extends ServletException {

    public Am2Exception(String msg) {
        super(msg);
    }

    public int getHttpErrorCode() {
        return HttpStatus.OK.value();
    }

    public abstract String getOAuth2ErrorCode();

}
