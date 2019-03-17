package com.car.online.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author sun, 2019/3/13
 * @version V1.0
 * @description: 服务机构controller
 */

@RestController
public class ServiceController {

    @RequestMapping("/car/basic/service-info")
    public String toServiceIndex() {
        return "car/basic/service-info.html";
    }


}