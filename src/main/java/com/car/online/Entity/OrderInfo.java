package com.car.online.Entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * @author sun, 2019/3/12
 * @version V1.0
 * @description: 订单
 */
@Entity
@Table(name = "v_order_info")
@Data
public class OrderInfo {

    @Id
    private String orderId;

    private String companyName;

    private int address;

    private Long orderTime;

    private String vehicleNo;

    private String licenseId;

    private String driverPhone;

    private String orderState;

    @Transient
    private OrderCreateEntity orderCreate;

    @Transient
    private OrderMatchEntity orderMatch;

    @Transient
    private OrderCancelEntity orderCancel;

    @Transient
    private OperateDepartEntity operateDepart;

    @Transient
    private OperateArriveEntity operateArrive;

    @Transient
    private OperatePayEntity operatePay;

}