package com.car.online.Entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * 驾驶员基本信息接口
 *
 * @author sunz
 * @email
 * @date 2018-02-13 21:27:01
 */
@Entity
@Data
@Table(name = "base_info_driver")
public class BaseInfoDriverEntity {
    /**
     * 公司标识
     */
    private String companyId;
    /**
     * 注册地行政区划代码
     */
    private Integer address;
    /**
     * 机动车驾驶员姓名
     */
    private String driverName;
    /**
     * 驾驶员手机号
     */
    private String driverPhone;
    /**
     * 驾驶员性别
     */
    private String driverGender;
    /**
     * 出生日期
     */
    private Long driverBirthday;
    /**
     * 国籍
     */
    private String driverNationality;
    /**
     * 驾驶员民族
     */
    private String driverNation;
    /**
     * 驾驶员婚姻状况
     */
    private String driverMaritalStatus;
    /**
     * 驾驶员外语能力
     */
    private String driverLanguageLevel;
    /**
     * 驾驶员学历
     */
    private String driverEducation;
    /**
     * 户口登记机关名称
     */
    private String driverCensus;
    /**
     * 户口住址或长住住址
     */
    private String driverAddress;
    /**
     * 驾驶员通信地址
     */
    private String driverContactAddress;
    /**
     * 驾驶员照片文件编号
     */
    private String photoId;
    /**
     * 机动车驾驶证号
     */
    @Id
    private String licenseId;
    /**
     * 机动车驾驶证扫描件文件编号
     */
    private String licensePhotoId;
    /**
     * 准驾车型
     */
    private String driverType;
    /**
     * 初次领取驾驶证日期
     */
    private Long getDriverLicenseDate;
    /**
     * 驾驶证有效期限起
     */
    private Long driverLicenseOn;
    /**
     * 驾驶证有效期限止
     */
    private Long driverLicenseOff;
    /**
     * 是否巡游出租汽车驾驶员
     */
    private Integer taxiDriver;
    /**
     * 网络预约出租汽车驾驶员资格证号
     */
    private String certificateNo;
    /**
     * 网约预约出租汽车驾驶员证发证机构
     */
    private String networkCarIssueOrganization;
    /**
     * 资格证发证日期
     */
    private Long networkCarIssueDate;
    /**
     * 初次领取资格证日期
     */
    private Long getNetworkCarProofDate;
    /**
     * 资格证有效起始日期
     */
    private Long networkCarProofOn;
    /**
     * 资格证有效截止日期
     */
    private Long networkCarProofOff;
    /**
     * 报备日期
     */
    private Long registerDate;
    /**
     * 是否专职驾驶员
     */
    private Integer fullTimeDriver;
    /**
     * 是否在驾驶员黑名单内
     */
    private Integer inDriverBlacklist;
    /**
     * 服务类型
     */
    private Integer commercialType;
    /**
     * 驾驶员合同签署公司
     */
    private String contractCompany;
    /**
     * 合同开始时间
     */
    private Long contractOn;
    /**
     * 合同到期时间
     */
    private Long contractOff;
    /**
     * 紧急情况联系人
     */
    private String emergencyContact;
    /**
     * 紧急情况联系人电话
     */
    private String emergencyContactPhone;
    /**
     * 紧急情况联系人通信地址
     */
    private String emergencyContactAddress;
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
