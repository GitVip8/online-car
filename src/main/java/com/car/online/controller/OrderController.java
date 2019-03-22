package com.car.online.controller;

import com.car.admin.entity.PostParameter;
import com.car.admin.entity.Result;
import com.car.admin.utils.R;
import com.car.online.Entity.OrderInfo;
import com.car.online.dao.OrderInfoDao;
import com.car.online.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.transaction.Transactional;
import java.util.LinkedHashMap;

/**
 * @author sun, 2019/3/12
 * @version V1.0
 * @description: order controller
 */


@RestController
public class OrderController {

    @Autowired
    OrderService orderService;

  /*  @RequestMapping("/car/operation/order-info/list")
    @ResponseBody
    @Transactional
    public Result listOrder(@RequestBody PostParameter<OrderInfo> postParameter) {
        return R.success(dao.findAll());
    }*/

    @RequestMapping("/car/operation/order-info/list")
    @ResponseBody
    @Transactional
    public Result listOrder(@RequestBody PostParameter<LinkedHashMap<String, Object>> postParameter) {
        return R.success(orderService.listOrder(postParameter.getCondition(), postParameter.getPage()));
    }


    /**
     * 查询订单详细信息
     * *
     *
     * @return
     */
    @RequestMapping(value = "/car/operation/order-info/{orderId}")
    @ResponseBody
    public Object findDriverDetail(@PathVariable String orderId) {
        return R.success(orderService.findOrderDetail(orderId));
    }
}