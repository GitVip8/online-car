package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * 驾驶员定位信息接口
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:28:09
 */
@Data
@Entity
@Table(name = "position_driver")
public class PositionDriverEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    /**
     * 公司标识
     */
    private String companyId;
    /**
     * 机动车驾驶证号
     */
    private String licenseId;
    /**
     * 行政区划代码
     */
    private Integer driverRegionCode;
    /**
     * 车辆号牌
     */
    private String vehicleNo;
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
     * 坐标加密标识
     */
    private Integer encrypt;
    /**
     * 方位角
     */
    private Integer direction;
    /**
     * 海拔高度
     */
    private Integer elevation;
    /**
     * 瞬时速度
     */
    private Integer speed;
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
