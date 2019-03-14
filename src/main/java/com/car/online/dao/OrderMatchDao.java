package com.car.online.dao;

import com.car.online.Entity.OrderMatchEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderMatchDao extends JpaRepository<OrderMatchEntity, String> {
    OrderMatchEntity findFirstByOrderId(String orderId);
}
