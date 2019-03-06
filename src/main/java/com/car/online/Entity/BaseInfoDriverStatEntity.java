package com.car.online.Entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * 驾驶员统计信息接口
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:27:00
 */
@Data
@Entity
@Table(name = "base_info_driver_stat")
public class BaseInfoDriverStatEntity {

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
     * 机动车驾驶证编号
     */
    private String licenseId;
    /**
     * 统计周期
     */
    private Long cycle;
    /**
     * 完成订单次数
     */
    private Integer orderCount;
    /**
     * 交通违章次数
     */
    private Integer trafficViolationCount;
    /**
     * 被投诉次数
     */
    private Integer complainedCount;
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
