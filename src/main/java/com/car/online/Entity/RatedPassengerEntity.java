package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * 乘客评价信息接口
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:28:25
 */
@Entity
@Data
@Table(name = "rated_passenger")
public class RatedPassengerEntity {
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
     * 评价时间
     */
    private Long evaluateTime;
    /**
     * 服务满意度
     */
    private Integer serviceScore;
    /**
     * 驾驶员满意度
     */
    private Integer driverScore;
    /**
     * 车辆满意度
     */
    private Integer vehicleScore;
    /**
     * 评价内容
     */
    private String detail;
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
