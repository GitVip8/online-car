package com.car.admin.dao;

import com.car.admin.entity.RegionCode;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.ArrayList;

public interface RegionCodeDao extends JpaRepository<RegionCode, Long> {

    ArrayList<RegionCode> findByLevelOrderByCode(int level);

    ArrayList<RegionCode> findByParentOrderByCode(RegionCode parent);

}
