package com.boot.security.server.result;

/**
 * 返回体 枚举
 * @author zheng
 */
public enum ResponseCode {
    /** 成功 */
    SUCCESS("200", "成功"),

    /** 操作失败 */
    ERROR("403", "操作失败"),

    /** 未找到 */
    NOTFIND("401","未找到"),

    /** 没有权限 */
    NOTPERMISSION("401","没有权限");


    private ResponseCode(String value, String msg){
        this.val = value;
        this.msg = msg;
    }

    public String val() {
        return val;
    }

    public String msg() {
        return msg;
    }

    private String val;
    private String msg;
}
