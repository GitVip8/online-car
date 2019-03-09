package com.car.online.dao;

import com.car.online.Entity.BaseInfoVehicleTotalMileEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VehicleTotalMileDao extends JpaRepository<BaseInfoVehicleTotalMileEntity, Long> {

    BaseInfoVehicleTotalMileEntity findFirstByVehicleNo(String vehicleNo);

}
