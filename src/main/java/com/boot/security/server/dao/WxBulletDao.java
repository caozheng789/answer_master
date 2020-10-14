package com.boot.security.server.dao;

import java.util.List;
import java.util.Map;

import com.boot.security.server.dto.BulletWxUserDto;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.boot.security.server.model.WxBullet;

@Mapper
public interface WxBulletDao {

    @Select("select * from wx_bullet t where t.id = #{id}")
    WxBullet getById(Long id);

    @Delete("delete from wx_bullet where id = #{id}")
    int delete(Long id);

    int update(WxBullet wxBullet);
    
    @Options(useGeneratedKeys = true, keyProperty = "id")
    @Insert("insert into wx_bullet(user_id, context, create_time) values(#{userId}, #{context}, #{createTime})")
    int save(WxBullet wxBullet);
    
    int count(@Param("params") Map<String, Object> params);

    List<WxBullet> list(@Param("params") Map<String, Object> params, @Param("offset") Integer offset, @Param("limit") Integer limit);


    List<BulletWxUserDto> getBulletList(@Param("params") Map<String, Object> params, @Param("offset") Integer offset, @Param("limit") Integer limit);
}
