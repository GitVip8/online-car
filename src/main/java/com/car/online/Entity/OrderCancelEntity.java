package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * 订单撤销接口
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:27:59
 */
@Data
@Entity
@Table(name = "order_cancel")
public class OrderCancelEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    /**
     * 公司标识
     */
    private String companyId;
    /**
     * 上车地点行政区划代码
     */
    private Integer address;
    /**
     * 订单编号
     */
    private String orderId;
    /**
     * 订单时间
     */
    private Long orderTime;
    /**
     * 订单撤销时间
     */
    private Long cancelTime;
    /**
     * 撤销发起方
     */
    private String operator;
    /**
     * 撤销类型代码
     */
    private String cancelTypeCode;
    /**
     * 撤销或违约原因
     */
    private String cancelReason;
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
