package com.car.admin.service.impl;

import com.car.admin.dao.RegionCodeDao;
import com.car.admin.entity.RegionCode;
import com.car.admin.service.RegionCodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author sun, 2019/3/7
 * @version V1.0
 * @description: 行政区划service
 */

@Service
public class IRegionCodeService implements RegionCodeService {

    @Autowired
    RegionCodeDao dao;

    @Override
    public List<RegionCode> findAll() {
        return dao.findAll();
    }

    @Override
    public ArrayList<RegionCode> findLevel1() {
        return dao.findByLevelOrderByCode(1);
    }

    @Override
    public ArrayList<RegionCode> findLevel2(Long level1Code) {
        RegionCode parent = new RegionCode();
        parent.setCode(level1Code);
        return dao.findByParentOrderByCode(parent);
    }

    @Override
    public ArrayList<RegionCode> findLevel3(Long level2Code) {
        return findLevel2(level2Code);
    }
}