package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 网约车车辆里程信息接口
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:27:08
 */
@Data
@Entity
@Table(name = "base_info_vehicle_total_mile")
public class BaseInfoVehicleTotalMileEntity {

    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    /**
     * 公司标识
     */
    private String companyId;
    /**
     * 注册地行政区划代码
     */
    private Integer address;
    /**
     * 车辆号牌
     */
    private String vehicleNo;
    /**
     * 行驶总里程
     */
    private BigDecimal totalMile;
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
