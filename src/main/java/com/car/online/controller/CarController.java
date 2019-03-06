package com.car.online.controller;

import com.car.admin.utils.PageUtil;
import com.car.admin.utils.R;
import com.car.online.service.VehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author sun, 2019/3/6
 * @version V1.0
 * @description: 车辆相关controller
 */

@Controller
public class CarController {

    @Autowired
    VehicleService vehicleService;

    @RequestMapping(value = "/car/basic/car-info")
    public String toCarIndex() {
        return "car/basic/car-info.html";

    }


    @RequestMapping(value = "/car/basic/car-info/list")
    @ResponseBody
    public Object findAllVehicle(@RequestParam int currentPage, @RequestParam int size) {
        return R.success(vehicleService.findAll(PageUtil.create(currentPage, size)));
    }
}