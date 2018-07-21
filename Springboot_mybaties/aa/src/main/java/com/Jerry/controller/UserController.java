package com.Jerry.controller;

import com.Jerry.entity.User;
import com.Jerry.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping("/User.do")
    @ResponseBody
    public List<User> getUser(ModelAndView mvc) {
        System.out.println("sout");
        List<User> users = userService.getUser();
        return users;
    }

    @GetMapping("/Test.do")
    public String getTest() {
        System.out.println("进来了");
        return "index";
    }

    @RequestMapping("/UserDelete.do")
    @ResponseBody
    public Boolean UserDelete(@RequestBody String username) {
        System.out.println("UserName................." + username);
        return userService.DeleteUserByUserName(username) > 0;
    }

    @RequestMapping("/UpdateUser.do")
    @ResponseBody
    public Boolean UpdateUser(@RequestBody User user) {
        System.out.println("User................." + user);
        return userService.UpdateUser(user) > 0;
    }
}
