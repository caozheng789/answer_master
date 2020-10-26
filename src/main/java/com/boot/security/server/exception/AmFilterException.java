/*
 * Copyright (c) 2018-2999 广州亚米信息科技有限公司 All rights reserved.
 *
 * https://www.gz-yami.com/
 *
 * 未经允许，不可做商业用途！
 *
 * 版权所有，侵权必究！
 */

package com.boot.security.server.exception;


/**
 * @author zheng
 */
public class AmFilterException extends Am2Exception {

    public AmFilterException(String msg) {
        super(msg);
    }

    @Override
    public String getOAuth2ErrorCode() {
        return this.getMessage();
    }







}
