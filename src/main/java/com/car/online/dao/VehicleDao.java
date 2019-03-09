package com.car.online.dao;

import com.car.online.Entity.BaseInfoVehicleEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * 车辆基本信息DAO
 */
public interface VehicleDao extends JpaRepository<BaseInfoVehicleEntity, String> {

    /**
     * 根据车牌号查找汽车
     *
     * @param vehicleNo 车牌号
     * @return
     */
    BaseInfoVehicleEntity findOneByVehicleNo(String vehicleNo);

    @Override
    Page<BaseInfoVehicleEntity> findAll(Pageable pageable);
}
