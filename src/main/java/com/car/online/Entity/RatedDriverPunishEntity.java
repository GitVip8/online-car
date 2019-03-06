package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * 驾驶员处罚信息接口
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:28:25
 */
@Data
@Entity
@Table(name = "rated_driver_punish")
public class RatedDriverPunishEntity {
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
     * 处罚时间
     */
    private Long punishTime;
    /**
     * 处罚原因
     */
    private String punishReason;
    /**
     * 处罚结果
     */
    private String punishResult;
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
