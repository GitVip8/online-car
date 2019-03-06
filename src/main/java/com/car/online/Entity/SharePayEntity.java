package com.car.online.Entity;

import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 私人小客车合乘订单支付
 *
 * @author sunzheng
 * @date 2018-03-20 21:00:07
 */
@Table(name = "share_pay")
@Data
@Entity
public class SharePayEntity {
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
     * 运价类型编码
     */
    private String fareType;
    /**
     * 预计上车时间
     */
    private Long bookDepartTime;
    /**
     * 实际上车时间
     */
    private Long departTime;
    /**
     * 上车地点
     */
    private String departure;
    /**
     * 上车地点经度
     */
    private Long depLongitude;
    /**
     * 上车地点纬度
     */
    private Long depLatitude;
    /**
     * 下车时间
     */
    private Long destTime;
    /**
     * 下车地点
     */
    private String destination;
    /**
     * 下车地点经度
     */
    private Long destLongitude;
    /**
     * 下车地点纬度
     */
    private Long destLatitude;
    /**
     * 坐标加密标识
     */
    private Integer encrypt;
    /**
     * 载客里程
     */
    private BigDecimal driveMile;
    /**
     * 载客时间
     */
    private Integer driveTime;
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
     * 优惠金额
     */
    private BigDecimal benfitPrice;
    /**
     * 燃料成本分摊金额
     */
    private BigDecimal shareFuelFee;
    /**
     * 路桥通行分摊金额
     */
    private BigDecimal shareHighwayToll;
    /**
     * 附加费
     */
    private BigDecimal passengerTip;
    /**
     * 其他费用分摊金额
     */
    private BigDecimal shareOther;
    /**
     * 结算状态
     */
    private String payState;
    /**
     * 乘客人数
     */
    private Integer passengerNum;
    /**
     * 乘客结算时间
     */
    private Long payTime;
    /**
     * 订单完成时间
     */
    private Long orderMatchTime;
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
