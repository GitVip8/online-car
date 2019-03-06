package com.car.admin.service.impl;

import com.car.admin.dao.UserDao;
import com.car.admin.entity.User;
import com.car.admin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author sun, 2019/3/2
 * @version V1.0
 * @description: 用户service
 */

@Service
public class IUserService implements UserService {

    @Autowired
    UserDao userDao;

    @Override
    public User findUser(String username) {
        return userDao.findUserByUsername(username);
    }
}