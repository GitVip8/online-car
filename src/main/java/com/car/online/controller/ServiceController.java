package com.car.online.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author sun, 2019/3/13
 * @version V1.0
 * @description: 服务机构controller
 */

@Controller
public class ServiceController {

    @RequestMapping("/car/basic/service-info")
    public String toServiceIndex() {
        return "car/basic/service-info.html";
    }


}