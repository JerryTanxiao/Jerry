package com.Jerry.service;

import com.Jerry.entity.User;

import java.util.List;

public interface UserService {

    List<User> getUser();

    Integer DeleteUserByUserName(String username);

    Integer UpdateUser(User user);
}
