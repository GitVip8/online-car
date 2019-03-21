package com.car.online.service;

import com.car.online.Entity.BaseInfoVehicleEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.Map;

/**
 * 汽车service
 */
public interface VehicleService {

    /**
     * 查询所有
     *
     * @param pageable
     * @param entity
     * @return
     */
    Page<BaseInfoVehicleEntity> findAll(Pageable pageable, BaseInfoVehicleEntity entity);

    /**
     * 查询车辆其他信息
     *
     * @param vehicleNo
     * @return
     */
    Map<String, Object> findCarProperties(String vehicleNo);
}
