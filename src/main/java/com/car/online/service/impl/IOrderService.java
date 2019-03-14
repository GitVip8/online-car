package com.car.online.service.impl;

import com.car.online.Entity.OrderInfo;
import com.car.online.Entity.OrderMatchEntity;
import com.car.online.dao.*;
import com.car.online.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;

/**
 * @author sun, 2019/3/12
 * @version V1.0
 * @description:
 */
@Service
public class IOrderService implements OrderService {

    @Autowired
    OrderInfoDao orderInfoDao;

    @Autowired
    OrderCreateDao orderCreateDao;

    @Autowired
    OrderCancelDao orderCancelDao;

    @Autowired
    OrderMatchDao orderMatchDao;

    @Autowired
    OperateArriveDao operateArriveDao;

    @Autowired
    OperateDepartDao operateDepartDao;

    @Autowired
    OperatePayDao operatePayDao;


    @Override
    public Page<OrderInfo> listOrder(Example<OrderInfo> example, Pageable pageable) {

        return orderInfoDao.findAll(example, pageable);
    }

    @Override
    public OrderInfo findOrderDetail(String orderId) {
        OrderInfo orderInfo = orderInfoDao.findOrderInfoByOrderId(orderId);
        if (orderInfo != null) {
            orderInfo.setOrderCreate(orderCreateDao.findFirstByOrderId(orderId));
            OrderMatchEntity match = orderMatchDao.findFirstByOrderId(orderId);
            if (match != null) {
                orderInfo.setOrderMatch(match);
                orderInfo.setOperateDepart(operateDepartDao.findFirstByOrderId(orderId));
                orderInfo.setOperateArrive(operateArriveDao.findFirstByOrderId(orderId));
                orderInfo.setOperatePay(operatePayDao.findFirstByOrderId(orderId));
            }
            if (orderInfo.getOperatePay() == null)
                orderInfo.setOrderCancel(orderCancelDao.findFirstByOrderId(orderId));

        }

        return orderInfo;
    }
}