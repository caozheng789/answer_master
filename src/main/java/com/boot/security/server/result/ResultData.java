package com.boot.security.server.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 *  返回体 实体类
 * @author zheng
 */
@Data
@ApiModel("返回体-实体类")
public class ResultData implements Serializable {

    @ApiModelProperty("状态码")
    private String code;

    private String msg;

    @JsonInclude(JsonInclude.Include.NON_NULL)
    private Object data;

    public static ResultData success(Object data) {
        return resultData(ResponseCode.SUCCESS.val(), ResponseCode.SUCCESS.msg(), data);
    }

    public static ResultData success(Object data, String msg) {
        return resultData(ResponseCode.SUCCESS.val(), msg, data);
    }

    public static ResultData error(String msg) {
        return resultData(ResponseCode.ERROR.val(), msg, "");
    }

    public static ResultData notFind() {
        return resultData(ResponseCode.NOTFIND.val(), ResponseCode.NOTFIND.msg(), "");
    }

    public static ResultData notPermission(Object data) {
        return resultData(ResponseCode.NOTPERMISSION.val(), ResponseCode.NOTPERMISSION.msg(), data);
    }

    private static ResultData resultData(String code, String msg, Object data) {
        ResultData resultData = new ResultData();
        resultData.setCode(code);
        resultData.setMsg(msg);
        resultData.setData(data);
        return resultData;
    }
}
