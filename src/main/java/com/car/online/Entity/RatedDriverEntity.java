package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * 驾驶员信誉信息接口
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:28:25
 */
@Data
@Entity
@Table(name = "rated_driver")
public class RatedDriverEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * 公司标识
     */
    private String companyId;
    /**
     * 机动车驾驶证编号
     */
    private String licenseId;
    /**
     * 服务质量信誉等级
     */
    private Integer level;
    /**
     * 服务质量信誉考核日期
     */
    private Long testDate;
    /**
     * 服务质量信誉考核机构
     */
    private String testDepartment;
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
