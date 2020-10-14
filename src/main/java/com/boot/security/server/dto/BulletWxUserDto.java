package com.boot.security.server.dto;

import lombok.Data;

/**
 *  弹幕 + 微信用户信息
 * @author zheng
 */
@Data
public class BulletWxUserDto {

    private Integer id;
    private String context;
    private String nickname;
    private String headimgurl;
}
