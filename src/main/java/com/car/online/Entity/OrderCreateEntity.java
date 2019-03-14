package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * 订单发起接口
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:27:59
 */
@Table(name = "order_create")
@Data
@Entity
public class OrderCreateEntity {

    /**
     * 公司标识
     */
    private String companyId;
    /**
     * 发起地行政区划代码
     */
    private Integer address;
    /**
     * 订单编号
     */
    @Id
    private String orderId;
    /**
     * 预计用车时间
     */
    private Long departTime;
    /**
     * 订单发起时间
     */
    private Long orderTime;
    /**
     * 乘客备注
     */
    private String passengerNote;
    /**
     * 预计出发地点详细地址
     */
    private String departure;
    /**
     * 预计出发地点经度
     */
    private Long depLongitude;
    /**
     * 预计出发地点纬度
     */
    private Long depLatitude;
    /**
     * 预计目的地
     */
    private String destination;
    /**
     * 预计目的地经度
     */
    private Long destLongitude;
    /**
     * 预计目的地纬度
     */
    private Long destLatitude;
    /**
     * 坐标加密标识
     */
    private Integer encrypt;
    /**
     * 运价类型编码
     */
    private String fareType;
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
