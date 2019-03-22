package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * 网约车平台公司营运规模信息
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:27:08
 */
@Entity
@Data
@Table(name = "base_info_company_stat")
public class BaseInfoCompanyStatEntity {
    
    /**
     * 公司标识
     */
    @Id
    private String companyId;
    /**
     * 平台注册网约车辆数
     */
    private Integer vehicleNum;
    /**
     * 平台注册驾驶员数
     */
    private Integer driverNum;
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
