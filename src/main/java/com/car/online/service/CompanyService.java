package com.car.online.service;

import com.car.online.Entity.BaseInfoCompanyEntity;
import com.car.online.Entity.BaseInfoCompanyFareEntity;
import com.car.online.Entity.BaseInfoCompanyPayEntity;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.HashMap;
import java.util.List;

/**
 * @author sun, 2019/3/18
 * @version V1.0
 * @description: 公司平台service
 */

public interface CompanyService {

    Page<BaseInfoCompanyEntity> findAll(Pageable pageable, BaseInfoCompanyEntity entity);

    HashMap<String, Object> findDetail(String companyId);

    List find2Dic();

    Page<BaseInfoCompanyFareEntity> listFare(String companyId, Pageable pageable);

    Page<BaseInfoCompanyPayEntity> listPay(String companyId, Pageable pageable);
}