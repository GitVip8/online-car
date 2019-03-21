package com.car.online.controller;

import com.car.admin.entity.PostParameter;
import com.car.admin.utils.R;
import com.car.online.Entity.BaseInfoCompanyEntity;
import com.car.online.Entity.BaseInfoVehicleEntity;
import com.car.online.service.VehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;


/**
 * @author sun, 2019/3/6
 * @version V1.0
 * @description: 车辆相关controller
 */

@RestController
public class CarController {

    @Autowired
    VehicleService vehicleService;

    /**
     * 查询车辆基本信息
     *
     * @return
     */
    @RequestMapping(value = "/car/basic/car-info/list", method = RequestMethod.POST)
    @ResponseBody
    public Object findAllVehicle(@RequestBody PostParameter<BaseInfoVehicleEntity> postParameter) {
        return R.success(vehicleService.findAll(postParameter.getPage(), postParameter.getCondition()));
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