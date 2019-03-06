package com.car.online.Entity;


import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * 订单成功接口
 * 
 * @author sunz
 * @email 
 * @date 2018-02-13 21:27:59
 */
@Data
@Entity
@Table(name="order_match")
public class OrderMatchEntity  {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	/**
	 * 公司标识
	 */
	private String companyId;
	/**
	 * 发起地行政区划代码
	 */
	private Integer address;
	/**
	 * 订单编号
	 */
	private String orderId;
	/**
	 * 车辆经度
	 */
	private Long longitude;
	/**
	 * 车辆纬度
	 */
	private Long latitude;
	/**
	 * 坐标加密标识
	 */
	private Integer encrypt;
	/**
	 * 机动车驾驶证编号
	 */
	private String licenseId;
	/**
	 * 驾驶员手机号
	 */
	private String driverPhone;
	/**
	 * 车辆号牌
	 */
	private String vehicleNo;
	/**
	 * 派单成功时间
	 */
	private Long distributeTime;
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
