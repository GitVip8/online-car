package com.car.online.service;

import com.car.online.Entity.OrderCreateEntity;
import com.car.online.Entity.OrderInfo;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface OrderService {

    Page<OrderInfo> listOrder(Example<OrderInfo> example, Pageable pageable);

    OrderInfo findOrderDetail(String orderId);

}
