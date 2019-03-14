/**
 *
 * @Description  TODO
 *
 * @Author sun
 *
 * @Date 2019/3/12 21:13
 **/
var __mixin__ = {
    created: function () {
        this.find();
    },
    watch: {
        selected: function (a, b) {
            if (!a) return;
            this.serviceInfo.base = [
                {
                    name: '基本信息',
                    properties: [
                        {
                            key: '平台名称',
                            value: this.selected.companyName
                        },
                        {
                            key: '城市',
                            value: this.selected.address
                        },
                        {
                            key: '社会统一信用代码',
                            value: this.selected.orderCreate.identifier
                        },
                        {
                            key: '经营范围',
                            value: this.selected.businessScope
                        },
                        {
                            key: '经济类型',
                            value: this.selected.economicType
                        },
                        {
                            key: '注册资本',
                            value: this.selected.regCapital
                        },
                        {
                            key: '法人代表姓名',
                            value: this.selected.legalName
                        },
                        {
                            key: '法人代表身份证号',
                            value: this.selected.legalId
                        },
                        {
                            key: '法人代表电话',
                            value: this.selected.legalPhone
                        },
                        {
                            key: '通讯地址',
                            value: this.selected.contactAddress
                        }
                    ]
                },
                {
                    name: "法人代表身份证扫描件",
                    properties: [
                        {
                            key: '法人代表身份证扫描件文件编号',
                            value: this.selected.legalPhoto
                        }
                    ]

                }
            ];

            this.serviceInfo.stat = !this.selected.stat ? null : [
                {
                    name: "运营规模信息",
                    properties: [
                        {
                            key: '平台名称',
                            value: this.selected.companyName
                        },
                        {
                            key: '平台注册网约车数量',
                            value: this.selected.stat.vehicleNum
                        },
                        {
                            key: '平台注册驾驶员数量',
                            value: this.selected.stat.driverNum
                        }
                    ]

                }
            ];
            this.serviceInfo.pay = !this.selected.pay ? null : [
                {
                    name: "支付信息",
                    properties: []
                }
            ];
            this.serviceInfo.service = !this.selected.service ? null : [
                {
                    name: "服务机构",
                    properties: [
                        {
                            key: "平台名称",
                            value: this.selected.companyName
                        },
                        {
                            key: "服务机构名称",
                            value: this.selected.service.serviceName
                        },
                        {
                            key: "城市",
                            value: this.selected.service.address
                        },
                        {
                            key: "服务机构代码",
                            value: this.selected.service.serviceNo
                        },
                        {
                            key: "服务机构地址",
                            value: this.selected.service.detailAddress
                        },
                        {
                            key: "服务机构负责人姓名",
                            value: this.selected.service.responsibleName
                        },
                        {
                            key: "负责人联系电话",
                            value: this.selected.service.responsiblePhone
                        },
                        {
                            key: "服务机构管理人姓名",
                            value: this.selected.service.managerName
                        },
                        {
                            key: "管理人联系电话",
                            value: this.selected.service.managerPhone
                        },
                        {
                            key: "服务机构紧急联系电话",
                            value: this.selected.service.contactPhone
                        },
                        {
                            key: "服务机构设立日期",
                            value: this.selected.service.createDate
                        },
                        {
                            key: "行政文书送达邮寄地址",
                            value: this.selected.service.mailAddress
                        }
                    ]
                }
            ];
            this.serviceInfo.permit = !this.selected.permit ? null : [
                {
                    name: "经营许可",
                    properties: [
                        {
                            key: "平台名称",
                            value: this.selected.companyName
                        },
                        /*  {
                              key: "经济性质",
                              value: this.selected.permit.
                          },*/
                        {
                            key: "行政区划",
                            value: this.selected.address
                        },
                        /* {
                             key: "核发机关",
                             value: this.selected.permit.
                         },
                         {
                             key: "业务名称",
                             value: this.selected.permit.
                         },
                         {
                             key: "经营范围",
                             value: this.selected.permit.
                         },*/
                        {
                            key: "证照状态",
                            value: this.selected.permit.state
                        },
                        /*    {
                                key: "业务地址",
                                value: this.selected.permit.
                            },*/
                        {
                            key: "证件有效期起",
                            value: this.selected.permit.startDate
                        },
                        {
                            key: "证件有效期止",
                            value: this.selected.permit.stopDate
                        },
                        {
                            key: "统一社会信用编码",
                            value: this.selected.identifier
                        },
                        {
                            key: "经营状态",
                            value: this.selected.state
                        },
                        {
                            key: "经营区域",
                            value: this.selected.permit.operationArea
                        },
                        {
                            key: "初次发证日期",
                            value: this.selected.permit.certifyDate
                        },
                        {
                            key: "网络预约出租车经营许可证号",
                            value: this.selected.permit.certificate
                        }
                    ]
                }
            ];
            this.serviceInfo.fare = !this.selected.fare ? null : [
                {
                    name: "运价信息",
                    properties: []
                }
            ]
        }
    },
    data: {
        selected: null,
        serviceInfo: {
            base: null,
            stat: null,
            pay: null,
            service: null,
            permit: null,
            fare: null,
        },
        dialogVisible: false, //dialog是否可见
        //查询列表显示字段
        tableColumn: [
            {
                name: 'address',
                label: '地区',
                width: 0,
            },
            {
                name: 'company.companyName',
                label: '平台名称',
                width: 0,
            }, {
                name: 'orderId',
                label: '订单号',
                width: 0,
            },
            {
                name: 'order.orderTime',
                label: '订单发起时间',
                width: 0,
            }, {
                name: 'vehicleNo',
                label: '车辆号码',
                width: 0,
            }, {
                name: 'licenseld',
                label: '机动车驾驶证号',
                width: 0,
            }, {
                name: 'driverPhone',
                label: '驾驶员手机号',
                width: 0,
            },
            {
                name: 'orderState',
                label: '订单状态',
                width: 0,
            }
        ],
        // table 的数据
        tableData: [],
        // 查询条件
        condition: {
            test1: '',
            test2: ''
        },
        //分页信息
        page: {
            currentPage: 1,
            size: 10,
            totalPages: 1,
            totalElements: 0,
            sort: {}
        },
        //排序信息
        sort: {}
    },
    methods:
        {
            //查询所有
            find: function () {
                var _this = this;
                axios.get('/car/operation/order-info/list', {params: this.page}).then(function (r) {
                    if (r.data.code === 0) {
                        var d = r.data.data;
                        _this.tableData = d;
                        /*   _this.page = {
                               totalPages: d.totalPages,
                               totalElements: d.totalElements,
                               currentPage: (d.number + 1),
                               size: d.size
                           }*/
                    } else
                        _this.$message.error(r.date.msg);
                })
            }
            ,
            handleDetail: function (i, row) {
                //查询其他信息（里程、保险）
                var _this = this;
                axios.get('/car/operation/order-info/' + row.orderId).then(function (r) {
                    if (r.data.code === 0) {
                        _this.selected = r.data.data;
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