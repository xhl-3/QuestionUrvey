package com.qu.dao;

import com.qu.vo.UserVo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by xhl on 2018/3/11.
 */
public class UserDaoImpl extends BaseDao implements UserDao{
    public List<UserVo> selectUserInfo(String name) {
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("name",name);
        return this.getSqlSession().selectList("com.qu.admin.selectUserByName",map);
    }

}
