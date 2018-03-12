package com.qu.controller;

import com.qu.service.UserService;
import com.qu.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by xhl on 2018/3/10.
 */
@Controller
public class LoginContraller {


    @Autowired
    private UserService userService;
    /**
     * 管理员登录
     * @return
     */
    @RequestMapping("/login.do")
    public String login(@RequestParam("name") String name, @RequestParam("passwd") String passwd){

        List<UserVo> list =userService.selectUserInfo(name);
        if(list.get(0).getPasswd().equals(passwd)){
            return "statistics";
        }else{
            return "login";
        }

    }

}
