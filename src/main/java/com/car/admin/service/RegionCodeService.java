package com.car.admin.service;


import com.car.admin.entity.RegionCode;

import java.util.ArrayList;
import java.util.List;

public interface RegionCodeService {

    List<RegionCode> region = null;

    List<RegionCode> findAll();

    ArrayList<RegionCode> findLevel1();

    ArrayList<RegionCode> findLevel2(Long level1Code);

    ArrayList<RegionCode> findLevel3(Long level2Code);
}
