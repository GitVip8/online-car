package com.car.online.service.impl;

import com.car.admin.utils.R;
import com.car.online.Entity.BaseInfoCompanyEntity;
import com.car.online.Entity.BaseInfoCompanyFareEntity;
import com.car.online.Entity.BaseInfoCompanyPayEntity;
import com.car.online.dao.*;
import com.car.online.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
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

    @Autowired
    EntityManager entityManager;

    @Autowired
    CompanyDao dao;

    @Autowired
    CompanyServiceDao serviceDao;

    @Autowired
    CompanyStatDao statDao;

    @Autowired
    CompanyPermitDao permitDao;

    @Autowired
    CompanyFareDao fareDao;

    @Autowired
    CompanyPayDao payDao;

    @Override
    public Page<BaseInfoCompanyEntity> findAll(Pageable pageable, BaseInfoCompanyEntity entity) {
        ExampleMatcher matcher = ExampleMatcher.matching()
                .withMatcher("legalName", ExampleMatcher.GenericPropertyMatchers.contains());
        Example<BaseInfoCompanyEntity> example = Example.of(entity, matcher);
        return dao.findAll(example, pageable);
    }

    @Override
    public HashMap<String, Object> findDetail(String companyId) {
        HashMap<String, Object> detail = new HashMap<>();
        detail.put("stat", statDao.findFirstByCompanyId(companyId));
        detail.put("permit", permitDao.findFirstByCompanyId(companyId));
        detail.put("service", serviceDao.findFirstByCompanyId(companyId));
        return detail;
    }

    @Override
    public List find2Dic() {
        return entityManager.createNativeQuery("select company_id,company_name from base_info_company").getResultList();
    }

    @Override
    public Page<BaseInfoCompanyFareEntity> listFare(String companyId, Pageable pageable) {
        return fareDao.findAllByCompanyId(companyId, pageable);
    }

    @Override
    public Page<BaseInfoCompanyPayEntity> listPay(String companyId, Pageable pageable) {
        return payDao.findAllByCompanyId(companyId, pageable);
    }
}