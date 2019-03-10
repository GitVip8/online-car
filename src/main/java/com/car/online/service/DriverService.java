package com.car.online.service;

import com.car.online.Entity.BaseInfoDriverEntity;
import com.car.online.Entity.BaseInfoVehicleEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.Map;

public interface DriverService {


    /**
     * 查询所有
     *
     * @param pageable
     * @return
     */
    Page<BaseInfoDriverEntity> findAll(Pageable pageable);

    /**
     * 查询驾驶员其他信息
     *
     * @param licenseId
     * @return
     */
    Map<String, Object> findDriverProperties(String licenseId);
}
