package com.boot.security.server.model;


import lombok.Data;

import java.util.Date;

/**
 * @author zheng
 */
@Data
public class WxUser extends BaseEntity<Long> {

	private String nickname;
	private String headimgurl;
	private String language;
	private String privilege;
	private Integer sex;
	private String openid;
	private String city;
	private String province;
	private String country;
	private String token;

	private Long loginTime;

	private Long expireTime;



}
