package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 网约车平台公司运价信息
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:27:01
 */
@Entity
@Table(name = "base_info_company_fare")
@Data
public class BaseInfoCompanyFareEntity {

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
     * 运价类型编码
     */
    private String fareType;
    /**
     * 运价类型说明
     */
    private String fareTypeNote;
    /**
     * 运价有效期起
     */
    private Long fareValidOn;
    /**
     * 运价有效期止
     */
    private Long fareValidOff;
    /**
     * 起步价
     */
    private BigDecimal startFare;
    /**
     * 起步里程
     */
    private BigDecimal startMile;
    /**
     * 计程单价
     */
    private BigDecimal unitPricePerMile;
    /**
     * 计时单价
     */
    private BigDecimal unitPricePerMinute;
    /**
     * 单程加价单价
     */
    private BigDecimal upPrice;
    /**
     * 单程加价公里
     */
    private BigDecimal upPriceStartMile;
    /**
     * 运营早高峰时间起
     */
    private String morningPeakTimeOn;
    /**
     * 运营早高峰时间止
     */
    private String morningPeakTimeOff;
    /**
     * 运营晚高峰时间起
     */
    private String eveningPeakTimeOn;
    /**
     * 运营晚高峰时间止
     */
    private String eveningPeakTimeOff;
    /**
     * 其他运营高峰时间起
     */
    private String otherPeakTimeOn;
    /**
     * 其他运营高峰时间止
     */
    private String otherPeakTimeOff;
    /**
     * 高峰时间单程加价单价
     */
    private BigDecimal peakUnitPrice;
    /**
     * 高峰时间单程加价公里
     */
    private BigDecimal peakPriceStartMile;
    /**
     * 低速计时加价
     */
    private BigDecimal lowSpeedPricePerMinute;
    /**
     * 夜间费公里
     */
    private BigDecimal nightPricePerMile;
    /**
     * 夜间费分钟
     */
    private BigDecimal nightPricePerMinute;
    /**
     * 其它加价金额
     */
    private BigDecimal otherPrice;
    /**
     * 状态
     */
    private Integer state;
    /**
     * 更新时间
     */
    private Long updateTime;
    /**
     * 操作标识
     */
    private Integer flag;
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
