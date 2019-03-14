package com.car.online.dao;

import com.car.online.Entity.OrderInfo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderInfoDao extends JpaRepository<OrderInfo, String> {

    OrderInfo findOrderInfoByOrderId(String orderId);


}
