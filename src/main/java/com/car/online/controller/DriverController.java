package com.car.online.controller;

import com.car.admin.utils.PageUtil;
import com.car.admin.utils.R;
import com.car.online.service.DriverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * @author sun, 2019/3/10
 * @version V1.0
 * @description: 驾驶员controller
 */

@RestController
public class DriverController {


    @Autowired
    DriverService driverService;


    /**
     * 查询驾驶员基本信息
     *
     * @return
     */
    @RequestMapping(value = "/car/basic/driver-info/list")
    @ResponseBody
    public Object findAllDriver(@RequestParam int currentPage, @RequestParam int size) {
        return R.success(driverService.findAll(PageUtil.create(currentPage, size)));
    }


    /**
     * 查询车辆详细信息（保险信息、里程信息）
     *
     * @return
     */
    @RequestMapping(value = "/car/basic/driver-info/{vehicleNo}")
    @ResponseBody
    public Object findDriverDetail(@PathVariable String vehicleNo) {
        return R.success(driverService.findDriverProperties(vehicleNo));
    }

}