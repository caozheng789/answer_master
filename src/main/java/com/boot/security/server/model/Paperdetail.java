package com.boot.security.server.model;


import lombok.Data;

@Data
public class Paperdetail {

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
	/**
	 * 图片路径
	 */
	private String purl;

	/**
	 * 科普详情
	 */
	private String detail;


}
