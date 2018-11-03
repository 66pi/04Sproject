package com.c1604s.usermanagement.controller;

import com.c1604s.usermanagement.dto.UserRegisterDTO;
import org.apache.catalina.User;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
public class UserController {

    @PostMapping("/register")
    public Integer register(@RequestBody UserRegisterDTO userRegisterDTO){
        return 1;
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
