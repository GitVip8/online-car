package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * 网约车平台公司经营许可
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:27:01
 */
@Entity
@Table(name = "base_info_company_permit")
@Data
public class BaseInfoCompanyPermitEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * 公司标识
     */
    private String companyId;
    /**
     * 许可地行政区划代码
     */
    private Integer address;
    /**
     * 网络预约出租汽车经营许可证号
     */
    private String certificate;
    /**
     * 经营区域
     */
    private String operationArea;
    /**
     * 公司名称
     */
    private String ownerName;
    /**
     * 发证机构名称
     */
    private String organization;
    /**
     * 有效期起
     */
    private Long startDate;
    /**
     * 有效期止
     */
    private Long stopDate;
    /**
     * 初次发证日期
     */
    private Long certifyDate;
    /**
     * 证照状态
     */
    private String state;
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
