package com.car.online.dao;

import com.car.online.Entity.BaseInfoCompanyFareEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CompanyFareDao extends JpaRepository<BaseInfoCompanyFareEntity, String> {

    Page<BaseInfoCompanyFareEntity> findAllByCompanyId(String companyId, Pageable pageable);

}
