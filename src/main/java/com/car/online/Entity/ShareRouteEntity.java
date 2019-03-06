package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 私人小客车合乘驾驶员行程发布
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:28:39
 */
@Table(name = "share_route")
@Entity
@Data
public class ShareRouteEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    /**
     * 公司标识
     */
    private String companyId;
    /**
     * 行政区划代码
     */
    private Integer address;
    /**
     * 驾驶员发起行程编号
     */
    private String routeId;
    /**
     * 驾驶员姓名
     */
    private String driverName;
    /**
     * 驾驶员手机号
     */
    private String driverPhone;
    /**
     * 机动车驾驶证号
     */
    private String licenseId;
    /**
     * 车辆号牌
     */
    private String vehicleNo;
    /**
     * 行程出发地点
     */
    private String departure;
    /**
     * 车辆出发经度
     */
    private Long depLongitude;
    /**
     * 车辆出发纬度
     */
    private Long depLatitude;
    /**
     * 行程达到地点
     */
    private String destination;
    /**
     * 到达地经度
     */
    private Long destLongitude;
    /**
     * 到达地纬度
     */
    private Long destLatitude;
    /**
     * 坐标加密标识
     */
    private Integer encrypt;
    /**
     * 行程发布时间
     */
    private Long routeCreateTime;
    /**
     * 行程预计里程
     */
    private BigDecimal routeMile;
    /**
     * 行程备注
     */
    private String routeNote;
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
