package com.car.online.service.impl;

import com.car.online.Entity.BaseInfoVehicleEntity;
import com.car.online.dao.VehicleDao;
import com.car.online.dao.VehicleInsuranceDao;
import com.car.online.dao.VehicleTotalMileDao;
import com.car.online.service.VehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.HashMap;
import java.util.Map;

/**
 * @author sun, 2019/3/6
 * @version V1.0
 * @description: 汽车service实现
 */

@Service
public class IVehicleService implements VehicleService {
    @Autowired
    VehicleDao dao;

    @Autowired
    VehicleInsuranceDao vehicleInsuranceDao;

    @Autowired
    VehicleTotalMileDao vehicleTotalMileDao;

    @Override
    @Transactional
    public Page<BaseInfoVehicleEntity> findAll(Pageable pageable) {
        return dao.findAll(pageable);
    }

    @Override
    public Map<String, Object> findCarProperties(String vehicleNo) {
        HashMap<String, Object> properties = new HashMap<>();
        properties.put("insurance", vehicleInsuranceDao.findFirstByVehicleNo(vehicleNo));
        properties.put("totalMile", vehicleTotalMileDao.findFirstByVehicleNo(vehicleNo));
        return properties;
    }
}