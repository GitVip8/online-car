package com.car.online.dao;

import com.car.online.Entity.BaseInfoDriverEducateEntity;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DriverEducateDao extends JpaRepository<BaseInfoDriverEducateEntity, Long> {

    Page<BaseInfoDriverEducateEntity> findAllByLicenseIdOrderByCourseDateDesc(String licenseId, Example<BaseInfoDriverEducateEntity> example, Pageable pageable);

    Page<BaseInfoDriverEducateEntity> findAllByLicenseIdOrderByCourseDateDesc(String licenseId, Pageable pageable);
}
