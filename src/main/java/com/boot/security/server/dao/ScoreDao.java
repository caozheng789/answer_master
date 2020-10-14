package com.boot.security.server.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.boot.security.server.model.Score;

@Mapper
public interface ScoreDao {

    @Select("select * from score t where t.sid = #{id}")
    Score getById(Long id);

    @Delete("delete from score where sid = #{id}")
    int delete(Long id);

    int update(Score score);
    
    @Options(useGeneratedKeys = true, keyProperty = "id")
    @Insert("insert into score(sid, uid, pid, mark, create_time,share_url) values(#{sid}, #{uid}, #{pid}, #{mark}, #{createTime},#{shareUrl})")
    int save(Score score);
    
    int count(@Param("params") Map<String, Object> params);

    List<Score> list(@Param("params") Map<String, Object> params, @Param("offset") Integer offset, @Param("limit") Integer limit);
}
