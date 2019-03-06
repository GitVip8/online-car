package com.car.online;

import com.car.admin.dao.UserDao;
import com.car.admin.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CsptApplicationTests {

    @Autowired
    UserDao dao;

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @Test
    public void contextLoads() {
        User user = new User();
        user.setUsername("user");
        user.setPassword(bCryptPasswordEncoder.encode("user"));
        dao.save(user);
    }

}
