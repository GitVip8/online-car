package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 经营到达接口
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:27:41
 */
@Table(name = "operate_arrive")
@Data
@Entity
public class OperateArriveEntity {

    /**
     * 公司标识
     */
    private String companyId;

    /**
     * 订单号
     */
    @Id
    private String orderId;
    /**
     * 车辆到达经度
     */
    private Long destLongitude;
    /**
     * 车辆到达纬度
     */
    private Long destLatitude;
    /**
     * 坐标加密标识
     */
    private Integer encrypt;
    /**
     * 下车时间
     */
    private Long destTime;
    /**
     * 载客里程
     */
    private BigDecimal driveMile;
    /**
     * 载客时间
     */
    private Integer driveTime;
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
