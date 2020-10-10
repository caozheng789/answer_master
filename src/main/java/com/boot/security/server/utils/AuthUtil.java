package com.boot.security.server.utils;

import com.alibaba.fastjson.JSONObject;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

import java.io.IOException;

public class AuthUtil {

    public static final String APPID = "wxac1fb79f8e1d31a3";
    public static final String APPSECRET = "dba59ad863b9d2ba2e3f6daaf28cf918";
    //回调地址
//    public static final String backUrl="http://188.131.221.99/callBack";
    public static final String backUrl="http://192.168.1.163:8081/wx/callBack";

    public static JSONObject doGetJson(String url) throws ClientProtocolException, IOException{
        JSONObject jsonObject = null;
        //首先初始化HttpClient对象
        DefaultHttpClient client = new DefaultHttpClient();
        //通过get方式进行提交
        HttpGet httpGet = new HttpGet(url);
        //通过HTTPclient的execute方法进行发送请求
        HttpResponse response = client.execute(httpGet);
        //从response里面拿自己想要的结果
        HttpEntity entity = response.getEntity();
        if(entity != null){
            String result = EntityUtils.toString(entity,"UTF-8");

            jsonObject = JSONObject.parseObject(result);
            //jsonObject = jsonObject.fromObject(result);
        }
        //把链接释放掉
        httpGet.releaseConnection();
        return jsonObject;
    }
}


