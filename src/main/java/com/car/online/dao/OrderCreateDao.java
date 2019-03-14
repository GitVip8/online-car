package com.car.online.dao;

import com.car.online.Entity.OrderCreateEntity;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author sun, 2019/3/12
 * @version V1.0
 * @description:
 */

public interface OrderCreateDao extends JpaRepository<OrderCreateEntity, String> {
    OrderCreateEntity findFirstByOrderId(String orderId);
}