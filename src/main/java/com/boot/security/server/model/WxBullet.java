package com.boot.security.server.model;

import lombok.Data;


/**
 *  弹幕
 * @author zheng
 */
@Data
public class WxBullet extends BaseEntity<Long> {

	private Integer userId;

	private String context;


}
