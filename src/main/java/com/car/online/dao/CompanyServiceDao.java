package com.car.online.dao;

import com.car.online.Entity.BaseInfoCompanyServiceEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CompanyServiceDao extends JpaRepository<BaseInfoCompanyServiceEntity, String> {

    BaseInfoCompanyServiceEntity findFirstByCompanyId(String companyId);
}
