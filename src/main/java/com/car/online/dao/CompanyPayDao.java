package com.car.online.dao;

import com.car.online.Entity.BaseInfoCompanyPayEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CompanyPayDao extends JpaRepository<BaseInfoCompanyPayEntity, Long> {

    Page<BaseInfoCompanyPayEntity> findAllByCompanyId(String companyId, Pageable pageable);

}
