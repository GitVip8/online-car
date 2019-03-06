package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * 网约车平台公司基本信息
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:27:08
 */
@Entity
@Table(name = "base_info_company")
@Data
public class BaseInfoCompanyEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    /**
     * 公司标识
     */
    private String companyId;
    /**
     * 公司名称
     */
    private String companyName;
    /**
     * 统一社会信用代码
     */
    private String identifier;
    /**
     * 注册地行政区划代码
     */
    private Integer address;
    /**
     * 经营范围
     */
    private String businessScope;
    /**
     * 通讯地址
     */
    private String contactAddress;
    /**
     * 经营业户经济类型
     */
    private String economicType;
    /**
     * 注册资本
     */
    private String regCapital;
    /**
     * 法人代表姓名
     */
    private String legalName;
    /**
     * 法人代表身份证号
     */
    private String legalId;
    /**
     * 法人代表电话
     */
    private String legalPhone;
    /**
     * 法人代表身份证扫描件文件编号
     */
    private String legalPhoto;
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
