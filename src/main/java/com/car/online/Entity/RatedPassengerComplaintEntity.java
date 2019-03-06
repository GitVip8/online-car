package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * 乘客投诉信息接口
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:28:25
 */
@Table(name = "rated_passenger_complaint")
@Data
@Entity
public class RatedPassengerComplaintEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    /**
     * 公司标识
     */
    private String companyId;
    /**
     * 订单号
     */
    private String orderId;
    /**
     * 投诉时间
     */
    private Long complaintTime;
    /**
     * 投诉内容
     */
    private String detail;
    /**
     * 处理结果
     */
    private String result;
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
