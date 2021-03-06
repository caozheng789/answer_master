package com.boot.security.server.service;

import com.boot.security.server.dto.LoginUser;
import com.boot.security.server.dto.Token;
import com.boot.security.server.model.WxUser;

/**
 * Token管理器<br>
 * 可存储到redis或者数据库<br>
 * 具体可看实现类<br>
 * 默认基于redis，实现类为 com.boot.security.server.service.impl.TokenServiceJWTImpl<br>
 * 如要换成数据库存储，将TokenServiceImpl类上的注解@Primary挪到com.boot.security.server.service.impl.TokenServiceDbImpl
 * 
 * 
 * @author 阿正 1046802917@qq.com
 *
 *         2017年10月14日
 */
public interface TokenService {

	Token saveToken(LoginUser loginUser);

	Token saveWxToken(WxUser loginUser);

	void refresh(LoginUser loginUser);

	void refresh(WxUser loginUser);

	LoginUser getLoginUser(String token);

	boolean deleteToken(String token);

	WxUser getLoginWxUser(String token);

}
