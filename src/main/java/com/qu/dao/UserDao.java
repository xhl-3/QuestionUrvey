package com.qu.dao;

import com.qu.vo.UserVo;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by xhl on 2018/3/11.
 */
public interface UserDao{

    public List<UserVo> selectUserInfo(String name);
}
