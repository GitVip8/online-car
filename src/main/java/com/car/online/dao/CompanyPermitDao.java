package com.car.online.dao;

import com.car.online.Entity.BaseInfoCompanyPermitEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CompanyPermitDao extends JpaRepository<BaseInfoCompanyPermitEntity, String> {

    BaseInfoCompanyPermitEntity findFirstByCompanyId(String companyId);
}
