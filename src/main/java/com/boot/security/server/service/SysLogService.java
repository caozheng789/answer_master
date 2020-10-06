package com.boot.security.server.service;

import com.boot.security.server.model.SysLogs;

/**
 * 日志service
 * 
 * @author 阿正 1046802917@qq.com
 *
 *         2017年8月19日
 */
public interface SysLogService {

	void save(SysLogs sysLogs);

	void save(Long userId, String module, Boolean flag, String remark);

	void deleteLogs();
}
