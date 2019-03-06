package com.car.online.Entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * 网约车平台公司支付信息
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:27:01
 */
@Entity
@Table(name = "base_info_company_pay")
@Data
public class BaseInfoCompanyPayEntity {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * 公司标识
     */

    private String companyId;
    /**
     * 银行或者非银行支付机构名称
     */
    private String payName;
    /**
     * 非银行支付机构支付业务许可证编号
     */
    private String payId;
    /**
     * 支付业务类型
     */
    private String payType;
    /**
     * 业务覆盖范围
     */
    private String payScope;
    /**
     * 备付金存管银行
     */
    private String prepareBank;
    /**
     * 结算周期
     */
    private Integer countDate;
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
