package com.Jerry.service.impl;

import com.Jerry.dao.UserMapper;
import com.Jerry.entity.User;
import com.Jerry.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public List<User> getUser() {
        System.out.println("service....");
        List<User> users = userMapper.getUserAll();
        System.out.println("users: " + users);
        return users;
    }

    @Override
    public Integer DeleteUserByUserName(String username) {
        try {
            return userMapper.DeleteUserByUsername(username);
        } catch (Exception e) {
            return 0;
        }
    }

    @Override
    public Integer UpdateUser(User user) {
        return userMapper.UpdateUserByUser(user);
    }
}
