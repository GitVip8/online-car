package com.car.admin.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author sun, 2019/3/2
 * @version V1.0
 * @description: 公共controller
 */


@Controller
public class publicController {

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String toLoginPage() {
        return "login.html";
    }

  /*  @RequestMapping(value = "/current", method = RequestMethod.GET)
    @ResponseBody
    public String getCurrentUser() {
        Authentication au = SecurityContextHolder.getContext().getAuthentication();
        return "login.html";
    }*/


    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public String toDashboard() {
        Authentication au = SecurityContextHolder.getContext().getAuthentication();
        return "index.html";
    }
}