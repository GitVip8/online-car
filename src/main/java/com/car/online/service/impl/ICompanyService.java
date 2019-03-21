package com.car.online.service.impl;

import com.car.online.Entity.BaseInfoCompanyEntity;
import com.car.online.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import java.util.HashMap;
import java.util.List;

/**
 * @author sun, 2019/3/19
 * @version V1.0
 * @description: companyservice
 */

@Service
public class ICompanyService implements CompanyService {
    @Override
    public Page<BaseInfoCompanyEntity> findAll(Pageable pageable) {
        return null;
    }


    @Autowired
    EntityManager entityManager;

    @Override
    public List find2Dic() {
        return entityManager.createNativeQuery("select company_id,company_name from base_info_company").getResultList();
    }
}