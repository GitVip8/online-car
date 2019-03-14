package com.car.online.dao;

import com.car.online.Entity.OperateArriveEntity;
import com.car.online.Entity.OperatePayEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OperateArriveDao extends JpaRepository<OperateArriveEntity, String> {

    OperateArriveEntity findFirstByOrderId(String orderId);
}
