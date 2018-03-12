package com.qu.service;

import com.qu.dao.UserDao;
import com.qu.dao.UserDaoImpl;
import com.qu.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by xhl on 2018/3/11.
 */
@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDao userDao;

    public List<UserVo> selectUserInfo(String name) {
        return userDao.selectUserInfo(name);
    }
}
