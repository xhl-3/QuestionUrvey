package com.qu.service;

import com.qu.vo.UserAnswerVo;
import com.qu.vo.UserVo;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by xhl on 2018/3/11.
 */
public interface UserService {
    public List<UserVo> selectUserInfo(String name);

    public void inserAnswerInfo(UserAnswerVo vo);

    public List<UserAnswerVo> selectAllAnswer();
}
