package com.qu.controller;

import com.qu.service.UserService;
import com.qu.vo.UserAnswerVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by xhl on 2018/3/10.
 */
@Controller
public class CollectController {

    @Autowired
    private UserService userService;

    /**
     * 获取统计结果
     * @return
     */
    @RequestMapping("/getData.do")
    @ResponseBody
    public Object getData(){
        List<UserAnswerVo> list =new ArrayList<UserAnswerVo>();
        list=userService.selectAllAnswer();
        return list;
    }

    /**
     * 保存用户回答的结果
     * @return
     */
    @RequestMapping("/saveAnswer.do")
    public String saveAnswer( String name,String phone,String money,String type){
       String question1="问题1：每月花费多少元玩游戏？";
       String question2="问题2：最近玩什么类型的游戏？";
       UserAnswerVo vo1=new UserAnswerVo();
       vo1.setName(name);
       vo1.setPhone(phone);
       vo1.setQuestion_id("1");
       vo1.setQuestion_desc(question1);
       vo1.setAnswer(money);
       userService.inserAnswerInfo(vo1);

       UserAnswerVo vo2=new UserAnswerVo();
        vo2.setName(name);
        vo2.setPhone(phone);
        vo2.setQuestion_id("2");
        vo2.setQuestion_desc(question2);
        vo2.setAnswer(type);
        userService.inserAnswerInfo(vo2);
        Map<String,Object> map = new HashMap<String ,Object>();
        return  "success";
    }
}
