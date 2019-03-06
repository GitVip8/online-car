package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * 私人小客车合乘订单
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:28:39
 */
@Data
@Entity
@Table(name = "share_order")
public class ShareOrderEntity {

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
     * 乘客合乘订单号
     */
    private String orderId;
    /**
     * 预计上车时间
     */
    private Long bookDepartTime;
    /**
     * 预计上车地点
     */
    private String departure;
    /**
     * 预计上车地点经度
     */
    private Long depLongitude;
    /**
     * 预计上车地点纬度
     */
    private Long depLatitude;
    /**
     * 预计下车地点
     */
    private String destination;
    /**
     * 预计下车地点经度
     */
    private Long destLongitude;
    /**
     * 预计下车地点纬度
     */
    private Long destLatitude;
    /**
     * 坐标加密标识
     */
    private Integer encrypt;
    /**
     * 订单确认时间
     */
    private Long orderEnsureTime;
    /**
     * 乘客人数
     */
    private Integer passengerNum;
    /**
     * 乘客备注
     */
    private String passengerNote;
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
