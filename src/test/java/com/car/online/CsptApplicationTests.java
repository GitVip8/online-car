package com.car.online;

import com.car.admin.dao.UserDao;
import com.car.admin.entity.User;
import com.car.online.Entity.OrderInfo;
import com.car.online.dao.OrderCreateDao;
import com.car.online.dao.OrderInfoDao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.junit4.SpringRunner;

import javax.transaction.Transactional;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CsptApplicationTests {

    @Autowired
    UserDao dao;

    @Autowired
    OrderInfoDao orderInfoDao;

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @Test
    public void contextLoads() {
        User user = new User();
        user.setUsername("user");
        user.setPassword(bCryptPasswordEncoder.encode("user"));
        dao.save(user);
    }

    @Autowired
    OrderCreateDao orderDao;

    @Test
    @Transactional
    public void findOrder() {
        List<OrderInfo> list = orderInfoDao.findAll();
        if (list != null) {
            System.out.println("");
        }
    }


    @Test
    public void test(){
        String s = "P@ssw0rd.";
        System.out.println(bCryptPasswordEncoder.encode(s));
    }
}
