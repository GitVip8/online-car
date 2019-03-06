package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * 网约车驾驶员培训信息接口
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:27:00
 */
@Data
@Entity
@Table(name = "base_info_driver_educate")
public class BaseInfoDriverEducateEntity {

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
     * 驾驶员培训课程名称
     */
    private String courseName;
    /**
     * 培训课程日期
     */
    private Long courseDate;
    /**
     * 培训开始时间
     */
    private String startTime;
    /**
     * 培训结束时间
     */
    private String stopTime;
    /**
     * 培训时长
     */
    private Integer duration;
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
