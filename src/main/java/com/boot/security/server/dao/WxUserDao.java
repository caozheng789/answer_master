package com.boot.security.server.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.boot.security.server.model.WxUser;

@Mapper
public interface WxUserDao {

    @Select("select * from wx_user t where t.id = #{id}")
    WxUser getById(Long id);

    @Delete("delete from wx_user where id = #{id}")
    int delete(Long id);

    int update(WxUser wxUser);
    
    @Options(useGeneratedKeys = true, keyProperty = "id")
    @Insert("insert into wx_user(nickname, headimgurl, language, privilege, sex, openid, city, province, country) values(#{nickname}, #{headimgurl}, #{language}, #{privilege}, #{sex}, #{openid}, #{city}, #{province}, #{country})")
    int save(WxUser wxUser);
    
    int count(@Param("params") Map<String, Object> params);

    List<WxUser> list(@Param("params") Map<String, Object> params, @Param("offset") Integer offset, @Param("limit") Integer limit);

    /**
     * 根据openId 查询
     * @param openid
     * @return
     */
    @Select("select * from wx_user t where t.openid = #{openid}")
    WxUser findnameByopenId(String openid);
}
