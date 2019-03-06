package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 经营出发接口
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:27:40
 */
@Data
@Entity
@Table(name = "operate_depart")
public class OperateDepartEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    /**
     * 公司标识
     */
    private String companyId;
    /**
     * 订单号
     */
    private String orderId;
    /**
     * 机动车驾驶证号
     */
    private String licenseId;
    /**
     * 运价类型编码
     */
    private String fareType;
    /**
     * 车辆号牌
     */
    private String vehicleNo;
    /**
     * 车辆出发经度
     */
    private Long depLongitude;
    /**
     * 车辆出发纬度
     */
    private Long depLatitude;
    /**
     * 坐标加密标识
     */
    private Integer encrypt;
    /**
     * 上车时间
     */
    private Long depTime;
    /**
     * 空驶里程
     */
    private BigDecimal waitMile;
    /**
     * 等待时间
     */
    private Integer waitTime;
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
