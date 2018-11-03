package com.c1604s.usermanagement.controller;

import com.c1604s.usermanagement.dao.UserMapper;
import com.c1604s.usermanagement.dto.UserRegisterDTO;
import com.c1604s.usermanagement.po.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.web.bind.annotation.*;

@RestController
@EnableAutoConfiguration
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserMapper userMapper;

    @PostMapping("/register")
    public Integer register(@RequestBody UserRegisterDTO userRegisterDTO){

        User user = new User();
        user.setUsername(userRegisterDTO.getUsername());
        user.setEncryptedPassword(userRegisterDTO.getPassword());
        user.setIsDelete(false);
        userMapper.insert(user);
        return user.getUserid();
    }

    @GetMapping("/login")
    public void login(@RequestParam String username, @RequestParam String password){

    }

    @GetMapping("/getUserInfo")
    public void getUserInfo(){}

    @PostMapping("/updateUserInfo")
    public void updateUserInfo(){}

    @PostMapping("/signoff")
    public void signoff(){}
}
