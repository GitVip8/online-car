package com.car.online.service;

import com.car.online.Entity.BaseInfoVehicleEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 * 汽车service
 */
public interface VehicleService {

    Page<BaseInfoVehicleEntity> findAll(Pageable pageable);
}
