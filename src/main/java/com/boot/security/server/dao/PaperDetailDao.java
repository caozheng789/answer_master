package com.boot.security.server.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.boot.security.server.model.Paperdetail;

/**
 * @author zheng
 */
@Mapper
public interface PaperDetailDao {

    Paperdetail getById(Long id);

    @Delete("delete from paperdetail where pdid = #{id}")
    int delete(Long id);

    int update(Paperdetail paperdetail);
    
    @Options(useGeneratedKeys = true, keyProperty = "id")
    @Insert("insert into paperdetail ( pid, content, typeA, typeB, typeC, typeD, p_right, p_type, p_value) values( #{pid}, #{content}, #{typeA}, #{typeB}, #{typeC}, #{typeD}, #{right}, #{type}, #{value})")
    int save(Paperdetail paperdetail);
    
    int count(@Param("params") Map<String, Object> params);

    List<Paperdetail> list(@Param("params") Map<String, Object> params, @Param("offset") Integer offset, @Param("limit") Integer limit);


}
