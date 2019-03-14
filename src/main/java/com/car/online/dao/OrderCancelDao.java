package com.car.online.dao;

import com.car.online.Entity.OrderCancelEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderCancelDao extends JpaRepository<OrderCancelEntity, String> {
    OrderCancelEntity findFirstByOrderId(String orderId);
}
