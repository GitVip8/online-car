package com.car.online.controller;

import com.car.admin.entity.Result;
import com.car.admin.utils.R;
import com.car.online.dao.OrderInfoDao;
import com.car.online.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.transaction.Transactional;

/**
 * @author sun, 2019/3/12
 * @version V1.0
 * @description: order controller
 */


@Controller
public class OrderController {

    @Autowired
    OrderInfoDao dao;

    @Autowired
    OrderService orderService;

    @RequestMapping("/car/operation/order-info")
    public String toOrderIndex() {
        return "car/operation/order-info.html";
    }

    @RequestMapping("/car/operation/order-info/list")
    @ResponseBody
    @Transactional
    public Result listOrder(@RequestParam int currentPage, @RequestParam int size) {
        return R.success(dao.findAll());
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