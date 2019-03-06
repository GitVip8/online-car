package com.car.online.Entity;

import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 车辆保险信息接口
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:27:00
 */
@Data
@Entity
@Table(name = "base_info_vehicle_insurance")
public class BaseInfoVehicleInsuranceEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    /**
     * 公司标识
     */
    private String companyId;
    /**
     * 车辆号牌
     */
    private String vehicleNo;
    /**
     * 保险公司名称
     */
    private String insurCom;
    /**
     * 保险号
     */
    private String insurNum;
    /**
     * 保险类型
     */
    private String insurType;
    /**
     * 保险金额
     */
    private BigDecimal insurCount;
    /**
     * 保险生效时间
     */
    private Long insurEff;
    /**
     * 保险到期时间
     */
    private Long insurExp;
    /**
     * 操作标识
     */
    private Integer flag;
    /**
     * 更新时间
     */
    private Long updateTime;
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
