package com.car.online.dao;

import com.car.online.Entity.BaseInfoDriverAppEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DriverAppDao extends JpaRepository<BaseInfoDriverAppEntity, String> {

    BaseInfoDriverAppEntity findFirstByLicenseId(String licenseId);

}
