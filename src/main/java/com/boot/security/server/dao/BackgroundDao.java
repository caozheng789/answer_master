package com.boot.security.server.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.boot.security.server.model.Background;

@Mapper
public interface BackgroundDao {

    @Select("select * from background t where t.id = #{id}")
    Background getById(Long id);

    @Delete("delete from background where id = #{id}")
    int delete(Long id);

    int update(Background background);
    
    @Options(useGeneratedKeys = true, keyProperty = "id")
    @Insert("insert into background(bg_image, bg_desc, create_time) values(#{bgImage}, #{bgDesc}, #{createTime})")
    int save(Background background);
    
    int count(@Param("params") Map<String, Object> params);

    List<Background> list(@Param("params") Map<String, Object> params, @Param("offset") Integer offset, @Param("limit") Integer limit);

    /**
     * 获取背景
     * @return
     */
    @Select("select id,bg_image from background t order by create_time desc limit 0,1 ")
    Background getBackground();


}
