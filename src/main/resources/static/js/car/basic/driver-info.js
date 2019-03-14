/**
 *
 * @Description  TODO
 *
 * @Author sun
 *
 * @Date 2019/3/5 21:13
 **/
var __mixin__ = {
    created: function () {
        this.find();
    },
    watch: {
        selected: function (a, b) {
            if (!a) return;
            this.infoTableItems = [
                {
                    name: '驾驶员基本信息',
                    properties: [
                        {
                            key: '平台名称',
                            value: this.selected.company ? this.selected.company.companyName : ''
                        },
                        {
                            key: '省份',
                            value: ''
                        },
                        {
                            key: '城市',
                            value: ''
                        },
                        {
                            key: '机动车驾驶员姓名',
                            value: this.selected.driverName
                        },
                        {
                            key: '驾驶员手机号',
                            value: this.selected.driverPhone
                        },
                        {
                            key: '驾驶员性别',
                            value: this.selected.driverGender
                        },
                        {
                            key: '出生日期',
                            value: this.selected.driverBirthday
                        },
                        {
                            key: '国籍',
                            value: this.selected.driverNationality
                        },
                        {
                            key: '驾驶员民族',
                            value: this.selected.driverNation
                        },
                        {
                            key: '驾驶员婚姻状况',
                            value: this.selected.driverMaritalStatus
                        },
                        {
                            key: '驾驶员外语能力',
                            value: this.selected.driverLanguageLevel
                        },
                        {
                            key: '驾驶员学历',
                            value: this.selected.driverEducation
                        },
                        {
                            key: '户口登记机关名称',
                            value: this.selected.driverCensus
                        },
                        {
                            key: '户口地址或常住地址',
                            value: this.selected.driverAddress
                        },
                        {
                            key: '驾驶员通讯地址',
                            value: this.selected.driverContactAddress
                        },
                        {
                            key: '紧急情况联系人',
                            value: this.selected.emergencyContact
                        },
                        {
                            key: '紧急情况联系人电话',
                            value: this.selected.emergencyContactPhone
                        },
                        {
                            key: '紧急情况联系人通讯地址',
                            value: this.selected.emergencyContactAddress
                        }
                    ]
                },
                {
                    name: '机动车驾驶证信息',
                    properties: [
                        {
                            key: '机动车驾驶证号',
                            value: this.selected.licenseId
                        },
                        {
                            key: '准驾车型',
                            value: this.selected.driverType
                        },
                        {
                            key: '初次领取驾驶证信息',
                            value: this.selected.getDriverLicenseDate
                        },
                        {
                            key: '驾驶证有效期起',
                            value: this.selected.driverLicenseOn
                        },
                        {
                            key: '驾驶证有效期止',
                            value: this.selected.driverLicenseOff
                        }
                    ]
                },
                {
                    name: '网络预约出租汽车驾驶证信息',
                    properties: [
                        {
                            key: '网络预约出租汽车驾驶员资格证号',
                            value: this.selected.certificateNo
                        },
                        {
                            key: '网络预约出租汽车驾驶员证发证机构',
                            value: this.selected.networkCarIssueOrganization
                        },
                        {
                            key: '资格证发证日期',
                            value: this.selected.networkCarIssueDate
                        },
                        {
                            key: '初次领取资格证日期',
                            value: this.selected.getNetworkCarProofDate
                        },
                        {
                            key: '资格证有效起始日期',
                            value: this.selected.networkCarProofOn
                        },
                        {
                            key: '资格证有效截止日期',
                            value: this.selected.networkCarProofOff
                        },
                        {
                            key: '报备日期',
                            value: this.selected.registerDate
                        }
                    ]
                },
                {
                    name: '驾驶员服务信息',
                    properties: [
                        {
                            key: '是否迅游出租汽车驾驶员',
                            value: this.selected.taxiDriver
                        },
                        {
                            key: '是否专职驾驶员',
                            value: this.selected.fullTimeDriver
                        },
                        {
                            key: '是否在驾驶员黑名单内',
                            value: this.selected.inDriverBlacklist
                        },
                        {
                            key: '服务类型',
                            value: this.selected.commercialType
                        },
                        {
                            key: '驾驶员合同(或协议)签署公司',
                            value: this.selected.contractCompany
                        },
                        {
                            key: '合同(或协议)有效期起',
                            value: this.selected.contractOn
                        },
                        {
                            key: '合同(或协议)有效期止',
                            value: this.selected.contractOff
                        }
                    ]
                },
                {
                    name: '驾驶员照片',
                    properties: [
                        {
                            key: '驾驶员照片',
                            value: this.selected.photoId
                        }
                    ]
                }
            ];
            this.insuranceTableItems = [
                {
                    name: "车辆保险信息",
                    properties: [
                        {
                            key: '保险公司名称',
                            value: this.selected.insurance.insurCom
                        },
                        {
                            key: '保险号',
                            value: this.selected.insurance.insurNum
                        },
                        {
                            key: '保险类型',
                            value: this.selected.insurance.insurType
                        },
                        {
                            key: '保险金额',
                            value: this.selected.insurance.insurCount
                        },
                        {
                            key: '保险生效时间',
                            value: this.selected.insurance.insurEff
                        },
                        {
                            key: '保险到期时间',
                            value: this.selected.insurance.insurExp
                        }
                    ]

                }
            ];
            this.totalMileTableItem = [
                {
                    name: "车辆里程信息",
                    properties: [
                        {
                            key: "行驶总里程",
                            value: this.selected.totalMile.totalMile
                        }
                    ]
                }
            ]
        }
    },
    data: {
        selected: null,
        infoTableItems: [],
        insuranceTableItem: {},
        totalMileTableItem: {},
        dialogVisible: false, //dialog是否可见
        //查询列表显示字段
        tableColumn: [
            {
                name: 'driverName',
                label: '驾驶员姓名',
                width: 0,
            },
            {
                name: 'company.companyName',
                label: '公司名称',
                width: 0,
            }, {
                name: 'licenseId',
                label: '驾驶证号',
                width: 0,
            }
        ],
        // table 的数据
        tableData: [],
        // 查询条件
        condition: {
            test1: '',
            test2: '',
        },
        //分页信息
        page: {
            currentPage: 1,
            size: 10,
            totalPages: 1,
            totalElements: 0,
        },
        //排序信息
        sort: {}
    },
    methods:
        {
            //查询所有
            find: function () {
                var _this = this;
                axios.get('/car/basic/driver-info/list', {params: this.page}).then(function (r) {
                    if (r.data.code === 0) {
                        var d = r.data.data;
                        _this.tableData = d.content;
                        _this.page = {
                            totalPages: d.totalPages,
                            totalElements: d.totalElements,
                            currentPage: (d.number + 1),
                            size: d.size
                        }
                    } else
                        _this.$message.error(r.date.msg);
                })
            }
            ,
            handleDetail: function (i, row) {
                //查询其他信息（里程、保险）
                var _this = this;
                axios.get('/car/basic/driver-info/' + row.vehicleNo).then(function (r) {
                    if (r.data.code === 0) {
                        row.insurance = r.data.data.insurance;
                        row.totalMile = r.data.data.totalMile;
                        _this.selected = row;
                    } else {
                        _this.$message.error(r.date.msg);
                    }
                })
                this.dialogVisible = true;
            }
            ,
            handleSizeChange: function (a) {
                this.find();
            }
            ,
            handleCurrentChange: function (b) {
                this.find();
            },
            handelSortChange: function () {

            }
        }

}