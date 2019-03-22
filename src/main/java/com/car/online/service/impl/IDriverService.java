package com.car.online.service.impl;

import com.car.online.Entity.BaseInfoDriverEducateEntity;
import com.car.online.Entity.BaseInfoDriverEntity;
import com.car.online.Entity.BaseInfoVehicleEntity;
import com.car.online.dao.DriverAppDao;
import com.car.online.dao.DriverDao;
import com.car.online.dao.DriverEducateDao;
import com.car.online.service.DriverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.sql.Driver;
import java.util.HashMap;
import java.util.Map;

/**
 * @author sun, 2019/3/10
 * @version V1.0
 * @description: 驾驶员service
 */
@Service
public class IDriverService implements DriverService {

    @Autowired
    DriverDao dao;

    @Autowired
    DriverAppDao appDao;

    @Autowired
    DriverEducateDao educateDao;

    @Override
    public Page<BaseInfoDriverEntity> findAll(Pageable pageable) {
        return dao.findAll(pageable);
    }

    @Override
    public Page<BaseInfoDriverEntity> findAll(BaseInfoDriverEntity entity, Pageable pageable) {
        ExampleMatcher matcher = ExampleMatcher.matching()
                .withMatcher("driverPhone", ExampleMatcher.GenericPropertyMatchers.contains())
                .withMatcher("driverName", ExampleMatcher.GenericPropertyMatchers.contains())
                .withMatcher("licenseId", ExampleMatcher.GenericPropertyMatchers.contains());
        Example<BaseInfoDriverEntity> example = Example.of(entity, matcher);
        return dao.findAll(example, pageable);
    }

    @Override
    public Page<BaseInfoDriverEducateEntity> findAllEducate(String licenseId, Pageable pageable) {
        return educateDao.findAllByLicenseIdOrderByCourseDateDesc(licenseId, pageable);
    }

    @Override
    public Map<String, Object> findDriverProperties(String licenseId) {
        HashMap<String, Object> properties = new HashMap<>();
        properties.put("app", appDao.findFirstByLicenseId(licenseId));
        return properties;
    }
}