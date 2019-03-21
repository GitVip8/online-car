package com.car.online.dao;

import com.car.online.Entity.BaseInfoCompanyEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * @author sun, 2019/3/19
 * @version V1.0
 * @description: companyDao
 */

public interface CompanyDao extends JpaRepository<BaseInfoCompanyEntity, String> {


}