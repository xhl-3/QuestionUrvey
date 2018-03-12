package com.qu.controller;

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

    /**
     * 获取统计结果
     * @return
     */
    @RequestMapping("/getData.do")
    @ResponseBody
    public Object getData(){
        List<Map<String,Object>> list =new ArrayList<Map<String,Object>>();
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("allUser","12");
        map.put("rightUser","6");
        map.put("errorUser","6");
        list.add(map);
        return list;
    }

    /**
     * 保存用户回答的结果
     * @return
     */
    @RequestMapping("/saveAnswer.do")
    @ResponseBody
    public Object saveAnswer( @RequestParam("name") String name,@RequestParam("answer") String answer){
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("success","success");
        return map;
    }
}
