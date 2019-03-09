package com.car.online.dao;

import com.car.online.Entity.BaseInfoVehicleInsuranceEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VehicleInsuranceDao extends JpaRepository<BaseInfoVehicleInsuranceEntity, Long> {

    BaseInfoVehicleInsuranceEntity findFirstByVehicleNo(String vehicleNo);

}
