package com.car.online.Entity;


import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * 乘客基本信息接口
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:27:00
 */
@Table(name = "base_info_passenger")
public class BaseInfoPassengerEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * 公司标识
     */
    private String companyId;
    /**
     * 注册日期
     */
    private Long registerDate;
    /**
     * 乘客手机号
     */
    private String passengerPhone;
    /**
     * 乘客称谓
     */
    private String passengerName;
    /**
     * 乘客性别
     */
    private String passengerGender;
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
