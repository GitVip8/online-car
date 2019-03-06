package com.car.online.Entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * 网约车平台公司服务机构
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:27:00
 */
@Table(name = "base_info_company_service")
@Entity
@Data
public class BaseInfoCompanyServiceEntity {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * 公司标识
     */
    private String companyId;
    /**
     * 行政区划代码
     */
    private Integer address;
    /**
     * 服务机构名称
     */
    private String serviceName;
    /**
     * 服务机构代码
     */
    private String serviceNo;
    /**
     * 服务机构地址
     */
    private String detailAddress;
    /**
     * 服务机构负责人姓名
     */
    private String responsibleName;
    /**
     * 负责人联系电话
     */
    private String responsiblePhone;
    /**
     * 服务机构管理人姓名
     */
    private String managerName;
    /**
     * 管理人联系电话
     */
    private String managerPhone;
    /**
     * 服务机构紧急联系电话
     */
    private String contactPhone;
    /**
     * 行政文书送达邮寄地址
     */
    private String mailAddress;
    /**
     * 服务机构设立日期
     */
    private Long createDate;
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
