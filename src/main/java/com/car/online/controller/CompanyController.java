package com.car.online.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author sun, 2019/3/5
 * @version V1.0
 * @description: 公司相关
 */

@Controller
public class CompanyController {

    @RequestMapping("/car/company/info")
    public String toCompanyInfo() {
        return "car/company/info.html";
    }

}