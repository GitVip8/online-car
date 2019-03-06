package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 车辆定位信息接口
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:28:09
 */
@Data
@Entity
@Table(name = "position_vehicle")
public class PositionVehicleEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * 公司标识
     */
    private String companyId;
    /**
     * 车辆号牌
     */
    private String vehicleNo;
    /**
     * 行政区划代码
     */
    private Integer vehicleRegionCode;
    /**
     * 定位时间
     */
    private Long positionTime;
    /**
     * 经度
     */
    private Long longitude;
    /**
     * 纬度
     */
    private Long latitude;
    /**
     * 瞬时速度
     */
    private Integer speed;
    /**
     * 方向角
     */
    private Integer direction;
    /**
     * 海拔高度
     */
    private Integer elevation;
    /**
     * 行驶里程
     */
    private BigDecimal mileage;
    /**
     * 坐标加密标识
     */
    private Integer encrypt;
    /**
     * 预警状态
     */
    private Integer warnStatus;
    /**
     * 车辆状态
     */
    private Integer vehStatus;
    /**
     * 营运状态
     */
    private Integer bizStatus;
    /**
     * 订单编号
     */
    private String orderId;
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
