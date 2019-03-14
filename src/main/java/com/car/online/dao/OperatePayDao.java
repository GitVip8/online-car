package com.car.online.dao;

import com.car.online.Entity.OperatePayEntity;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author sun, 2019/3/13
 * @version V1.0
 * @description:
 */

public interface OperatePayDao extends JpaRepository<OperatePayEntity, String> {
    OperatePayEntity findFirstByOrderId(String orderId);
}