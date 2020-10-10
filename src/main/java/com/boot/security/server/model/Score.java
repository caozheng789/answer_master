package com.boot.security.server.model;


import lombok.Data;

import java.util.Date;

@Data
public class Score extends BaseEntity<Long> {

	private Integer sid;
	private Integer uid;
	private Integer pid;
	private Integer mark;

	private Date createTime;



}
