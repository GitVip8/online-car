package com.car.online.service.impl;

import com.car.online.Entity.BaseInfoVehicleEntity;
import com.car.online.dao.BaseInfoVehicleDao;
import com.car.online.service.VehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

/**
 * @author sun, 2019/3/6
 * @version V1.0
 * @description: 汽车service实现
 */

@Service
public class IVehicleService implements VehicleService {
    @Autowired
    BaseInfoVehicleDao dao;

    @Override
    @Transactional
    public Page<BaseInfoVehicleEntity> findAll(Pageable pageable) {
        return dao.findAll(pageable);
    }
}