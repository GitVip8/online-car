package com.car.online.Entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * 驾驶员移动终端信息接口
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:27:00
 */

@Data
@Entity
@Table(name = "base_info_driver_app")
public class BaseInfoDriverAppEntity {

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
     * 机动车驾驶证号
     */
    private String licenseId;
    /**
     * 驾驶员手机号
     */
    private String driverPhone;
    /**
     * 手机运营商
     */
    private Integer netType;
    /**
     * 使用APP版本号
     */
    private String appVersion;
    /**
     * 使用地图类型
     */
    private Integer mapType;
    /**
     * 状态
     */
    private Integer state;
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
