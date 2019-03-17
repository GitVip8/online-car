package com.car.admin.controller;

import com.car.admin.utils.R;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

/**
 * @author sun, 2019/3/2
 * @version V1.0
 * @description: 公共controller
 */


@RestController
@RequestMapping("/api")
public class publicController {


    @RequestMapping("/user/current")
    public Object getCurrentUser(HttpServletRequest req) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return R.success(authentication);
    }
}