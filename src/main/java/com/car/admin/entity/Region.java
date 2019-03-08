package com.car.admin.entity;

import lombok.Data;

/**
 * @author sun, 2019/3/7
 * @version V1.0
 * @description: 省市区
 */

@Data
public class Region {

    private String province;

    private String city;

    private String area;

    public Region(RegionCode regionCode) {
        if (regionCode == null) return;
        switch (regionCode.getLevel()) {
            case 3:
                this.area = regionCode.getName();
                RegionCode parent = regionCode.getParent();
                this.city = parent.getName();
                RegionCode grandParent = parent.getParent();
                this.province = grandParent.getName();
                break;
            case 2:
                this.city = regionCode.getName();
                this.province = regionCode.getParent().getName();
            case 1:
                this.area = regionCode.getName();
                break;
            default:
                break;
        }
    }

}