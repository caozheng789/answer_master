package com.boot.security.server.model;


import lombok.Data;

@Data
public class Paperdetail extends BaseEntity<Long> {

	private Integer pdid;
	private Integer pid;
	private String content;
	private String typeA;
	private String typeB;
	private String typeC;
	private String typeD;
	private String right;
	private String type;
	private Integer value;


}
