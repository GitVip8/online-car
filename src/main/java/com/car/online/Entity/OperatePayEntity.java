package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 经营支付接口
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:27:40
 */
@Table(name = "operate_pay")
@Data
@Entity
public class OperatePayEntity {



    /**
     * 网约车公司标识
     */
    private String companyId;
    /**
     * 订单号
     */
    @Id
    private String orderId;

    /**
     * 上车位置行政区划编号
     */
    private Integer onArea;
    /**
     * 机动车驾驶员姓名
     */
    private String driverName;
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
     * 预计上车时间
     */
    private Long bookDepTime;
    /**
     * 等待时间
     */
    private Integer waitTime;
    /**
     * 车辆出发经度
     */
    private Long depLongitude;
    /**
     * 车辆出发纬度
     */
    private Long depLatitude;
    /**
     * 上车地点
     */
    private String depArea;
    /**
     * 上车时间
     */
    private Long depTime;
    /**
     * 车辆到达经度
     */
    private Long destLongitude;
    /**
     * 车辆到达纬度
     */
    private Long destLatitude;
    /**
     * 下车地点
     */
    private String destArea;
    /**
     * 下车时间
     */
    private Long destTime;
    /**
     * 预定车型
     */
    private String bookModel;
    /**
     * 实际使用车型
     */
    private String model;
    /**
     * 载客里程
     */
    private BigDecimal driveMile;
    /**
     * 载客时间
     */
    private Integer driveTime;
    /**
     * 空驶里程
     */
    private BigDecimal waitMile;
    /**
     * 实收金额
     */
    private BigDecimal factPrice;
    /**
     * 应收金额
     */
    private BigDecimal price;
    /**
     * 现金支付金额
     */
    private BigDecimal cashPrice;
    /**
     * 电子支付机构
     */
    private String lineName;
    /**
     * 电子支付金额
     */
    private BigDecimal linePrice;
    /**
     * POS机支付机构
     */
    private String posName;
    /**
     * POS机支付金额
     */
    private BigDecimal posPrice;
    /**
     * 优惠金额
     */
    private BigDecimal benfitPrice;
    /**
     * 预约服务费
     */
    private BigDecimal bookTip;
    /**
     * 附加费
     */
    private BigDecimal passengerTip;
    /**
     * 高峰时段时间加价金额
     */
    private BigDecimal peakUpPrice;
    /**
     * 夜间时段里程加价金额
     */
    private BigDecimal nightUpPrice;
    /**
     * 远途加价金额
     */
    private BigDecimal farUpPrice;
    /**
     * 其他加价金额
     */
    private BigDecimal otherUpPrice;
    /**
     * 结算状态
     */
    private String payState;
    /**
     * 乘客结算时间
     */
    private Long payTime;
    /**
     * 订单完成时间
     */
    private Long orderMatchTime;
    /**
     * 发票状态
     */
    private String invoiceStatus;
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
