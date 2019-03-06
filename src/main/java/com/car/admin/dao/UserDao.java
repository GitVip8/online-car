package com.car.admin.dao;

import com.car.admin.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author sun, 2019/3/2
 * @version V1.0
 * @description: UserDao
 */

public interface UserDao extends JpaRepository<User, Long> {

    User findUserByUsername(String username);

}