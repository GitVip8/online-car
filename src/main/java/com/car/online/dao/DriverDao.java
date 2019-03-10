package com.car.online.dao;

import com.car.online.Entity.BaseInfoDriverEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author sun, 2019/3/10
 * @version V1.0
 * @description: 驾驶员dao
 */

public interface DriverDao extends JpaRepository<BaseInfoDriverEntity, String> {

    Page<BaseInfoDriverEntity> findAll(Pageable pageable);

}