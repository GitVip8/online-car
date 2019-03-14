package com.car.online.dao;

import com.car.online.Entity.OperateDepartEntity;
import com.car.online.Entity.OperatePayEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OperateDepartDao extends JpaRepository<OperatePayEntity, String> {
    OperateDepartEntity findFirstByOrderId(String orderId);
}
