package com.car.online.controller;

import com.car.admin.entity.Result;
import com.car.admin.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.transaction.Transactional;

/**
 * @author sun, 2019/3/13
 * @version V1.0
 * @description: 服务机构controller
 */

@RestController
public class ServiceController {

/*

    @RequestMapping("/car/base/service-info/list")
    @ResponseBody
    @Transactional
    public Result listOrder(@RequestParam int currentPage, @RequestParam int size) {
        return R.success(dao.findAll());
    }

    */
/**
     * 查询订单详细信息
     * *
     *
     * @return
     *//*

    @RequestMapping(value = "/car/base/service-info/{serviceId}")
    @ResponseBody
    public Object findDriverDetail(@PathVariable String serviceId) {
        return R.success(orderService.findOrderDetail(orderId));
    }
*/


}