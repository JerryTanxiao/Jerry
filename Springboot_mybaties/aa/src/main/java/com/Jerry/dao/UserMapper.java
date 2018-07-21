package com.Jerry.dao;


import com.Jerry.entity.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserMapper {
    List<User> getUserAll();

    @Delete("delete from user where username=#{username}")
    Integer DeleteUserByUsername(@Param("username") String username);

    Integer UpdateUserByUser(User user);
}
