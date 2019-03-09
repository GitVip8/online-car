package com.car.online.controller;

import com.car.admin.utils.PageUtil;
import com.car.admin.utils.R;
import com.car.online.service.VehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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

    /**
     * 车辆信息查询首页
     *
     * @return
     */
    @RequestMapping(value = "/car/basic/car-info")
    public String toCarIndex() {
        return "car/basic/car-info.html";

    }


    /**
     * 查询车辆基本信息
     *
     * @return
     */
    @RequestMapping(value = "/car/basic/car-info/list")
    @ResponseBody
    public Object findAllVehicle(@RequestParam int currentPage, @RequestParam int size) {
        return R.success(vehicleService.findAll(PageUtil.create(currentPage, size)));
    }


    /**
     * 查询车辆详细信息（保险信息、里程信息）
     *
     * @return
     */
    @RequestMapping(value = "/car/basic/car-info/{vehicleNo}")
    @ResponseBody
    public Object findVehicleDetail(@PathVariable String vehicleNo) {
        return R.success(vehicleService.findCarProperties(vehicleNo));
    }
}