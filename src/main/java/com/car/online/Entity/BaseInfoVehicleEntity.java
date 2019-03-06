package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * 车辆基本信息
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:27:08
 */
@Data
@Entity
@Table(name = "base_info_vehicle")
public class BaseInfoVehicleEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    /**
     * 公司标识
     */
    private String companyId;
    /**
     * 车辆所在城市
     */
    private Integer address;
    /**
     * 车辆号牌
     */
    private String vehicleNo;
    /**
     * 车牌颜色
     */
    private String plateColor;
    /**
     * 核定载客位
     */
    private Integer seats;
    /**
     * 车辆厂牌
     */
    private String brand;
    /**
     * 车辆型号
     */
    private String model;
    /**
     * 车辆类型
     */
    private String vehicleType;
    /**
     * 车辆所有人
     */
    private String ownerName;
    /**
     * 车身颜色
     */
    private String vehicleColor;
    /**
     * 发动机号
     */
    private String engineId;
    /**
     * 车辆VIN码
     */
    private String vin;
    /**
     * 车辆注册日期
     */
    private Long certifyDateA;
    /**
     * 车辆燃料类型
     */
    private String fuelType;
    /**
     * 发动机排量
     */
    private String engineDisplace;
    /**
     * 车辆照片文件编号
     */
    private String photoId;
    /**
     * 运输证字号
     */
    private String certificate;
    /**
     * 车辆运输证发证机构
     */
    private String transAgency;
    /**
     * 车辆经营区域
     */
    private String transArea;
    /**
     * 车辆运输证有效期起
     */
    private Long transDateStart;
    /**
     * 车辆运输证有效期止
     */
    private Long transDateStop;
    /**
     * 车辆初次登记日期
     */
    private Long certifyDateB;
    /**
     * 车辆检修状态
     */
    private String fixState;
    /**
     * 车辆下次年检时间
     */
    private Long nextFixDate;
    /**
     * 车辆年度审验状态
     */
    private String checkState;
    /**
     * 发票打印设备序列号
     */
    private String feePrintId;
    /**
     * 卫星定位装置品牌
     */
    private String gpsbrand;
    /**
     * 卫星定位装置型号
     */
    private String gpsmodel;
    /**
     * 卫星定位装置IMEI号
     */
    private String gpsimei;
    /**
     * 卫星定位设备安装日期
     */
    private Long gpsinstallDate;
    /**
     * 报备日期
     */
    private Long registerDate;
    /**
     * 服务类型
     */
    private Integer commercialType;
    /**
     * 运价类型编码
     */
    private String fareType;
    /**
     * 状态
     */
    private Integer state;
    /**
     * 操作标识
     */
    private Integer flag;
    /**
     * 更新时间
     */
    private Long updateTime;
    /**
     * 保留字段
     */
    private String reserved;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 数据来源
     */
    private String dataSource;

}
