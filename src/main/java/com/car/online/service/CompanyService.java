package com.car.online.service;

import com.car.online.Entity.BaseInfoCompanyEntity;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * @author sun, 2019/3/18
 * @version V1.0
 * @description: 公司平台service
 */

public interface CompanyService {

    Page<BaseInfoCompanyEntity> findAll(Pageable pageable);

    List find2Dic();

}