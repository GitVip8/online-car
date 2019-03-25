package com.car.online.dao;

import com.car.online.Entity.BaseInfoCompanyStatEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CompanyStatDao extends JpaRepository<BaseInfoCompanyStatEntity, String> {
    BaseInfoCompanyStatEntity findFirstByCompanyId(String companyId);
}
