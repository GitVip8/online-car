package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * 车辆经营下线接口
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:27:41
 */
@Data
@Entity
@Table(name = "operate_logout")
public class OperateLogoutEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * 公司标识
     */
    private String companyId;
    /**
     * 机动车驾驶证号
     */
    private String licenseId;
    /**
     * 车辆号牌
     */
    private String vehicleNo;
    /**
     * 车辆经营下线时间
     */
    private Long logoutTime;
    /**
     * 下线经度
     */
    private Long longitude;
    /**
     * 下线纬度
     */
    private Long latitude;
    /**
     * 坐标加密标识
     */
    private Integer encrypt;
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
