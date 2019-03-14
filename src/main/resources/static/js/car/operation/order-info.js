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
            this.orderInfo.create = [
                {
                    name: '订单发起信息',
                    properties: [
                        {
                            key: '公司名称',
                            value: this.selected.companyName
                        },
                        {
                            key: '乘客备注',
                            value: this.selected.orderCreate.passengerNote
                        },
                        {
                            key: '城市',
                            value: this.selected.orderCreate.address
                        },
                        {
                            key: '订单编号',
                            value: this.selected.orderId
                        },
                        {
                            key: '预计用车时间',
                            value: this.selected.orderCreate.departTime
                        },
                        {
                            key: '订单发起时间',
                            value: this.selected.orderCreate.orderTime
                        },
                        {
                            key: '运价类型编码',
                            value: this.selected.orderCreate.fareType
                        },
                        {
                            key: '预计出发地点详细地址',
                            value: this.selected.orderCreate.departure
                        },
                        {
                            key: '预计目的地',
                            value: this.selected.orderCreate.destination
                        }
                    ]
                }
            ];

            this.orderInfo.match = !this.selected.orderMatch ? null : [
                {
                    name: "订单成功信息",
                    properties: [
                        {
                            key: '公司名称',
                            value: this.selected.companyName
                        },
                        {
                            key: '派单成功时间',
                            value: this.selected.orderMatch.distributeTime
                        },
                        {
                            key: '城市',
                            value: this.selected.address
                        },
                        {
                            key: '订单编号',
                            value: this.selected.orderId
                        },
                        {
                            key: '车辆号码',
                            value: this.selected.orderMatch.vehicleNo
                        },
                        {
                            key: '机动车驾驶证号',
                            value: this.selected.orderMatch.licenseId
                        },
                        {
                            key: '驾驶员手机号',
                            value: this.selected.orderMatch.driverPhone
                        }
                    ]

                }
            ];
            this.orderInfo.depart = !this.selected.operaDepart ? null : [
                {
                    name: "经营出发信息",
                    properties: [
                        {
                            key: "公司名称",
                            value: this.selected.companyName
                        },
                        {
                            key: "订单编号",
                            value: this.selected.orderId
                        },
                        {
                            key: "机动车驾驶证号",
                            value: this.selected.operaDepart.licenseId
                        },
                        {
                            key: "车辆号码",
                            value: this.selected.operaDepart.vehicleNo
                        },
                        {
                            key: "运价类型编码",
                            value: this.selected.operaDepart.fareType
                        },
                        {
                            key: "上车时间",
                            value: this.selected.operaDepart.depTime
                        },
                        {
                            key: "空驶里程（公里）",
                            value: this.selected.operaDepart.waitMile
                        },
                        {
                            key: "等待时间",
                            value: this.selected.operaDepart.waitTime
                        }
                    ]
                }
            ];
            this.orderInfo.arrive = !this.selected.operaArrive ? null : [
                {
                    name: "经营到达信息",
                    properties: [
                        {
                            key: "公司名称",
                            value: this.selected.companyName
                        },
                        {
                            key: "订单编号",
                            value: this.selected.orderId
                        },
                        {
                            key: "载客时间",
                            value: this.selected.operaArrive.driveTime
                        },
                        {
                            key: "载客里程（公里）",
                            value: this.selected.operaArrive.driveMile
                        },
                        {
                            key: "下车时间",
                            value: this.selected.operaArrive.destTime
                        }
                    ]
                }
            ];
            this.orderInfo.pay = !this.selected.operaPay ? null : [
                {
                    name: "经营支付信息",
                    properties: [
                        {
                            key: "公司名称",
                            value: this.selected.companyName
                        },
                        {
                            key: "订单编号",
                            value: this.selected.orderId
                        },
                        {
                            key: "载客时间",
                            value: this.selected.operaArrive.driveTime
                        },
                        {
                            key: "载客里程（公里）",
                            value: this.selected.operaArrive.driveMile
                        },
                        {
                            key: "下车时间",
                            value: this.selected.operaArrive.destTime
                        }
                    ]
                }
            ];
            this.orderInfo.cancel = !this.selected.orderCancel ? null : [
                {
                    name: "订单撤销信息",
                    properties: [
                        {
                            key: "公司名称",
                            value: this.selected.companyName
                        },
                        {
                            key: "上车地点行政区划代码",
                            value: this.selected.orderCancel.address
                        },
                        {
                            key: "订单编号",
                            value: this.selected.orderId
                        },
                        {
                            key: "订单时间",
                            value: this.selected.orderCancel.orderTime
                        },
                        {
                            key: "撤销发起方",
                            value: this.selected.orderCancel.operator
                        },
                        {
                            key: "撤销类型",
                            value: this.selected.orderCancel.cancelTypeCode
                        },
                        {
                            key: "撤销或违约原因",
                            value: this.selected.orderCancel.cancelReason
                        }
                    ]
                }
            ]
        }
    },
    data: {
        selected: null,
        orderInfo: {
            create: null,
            match: null,
            cancel: null,
            arrive: null,
            depart: null,
            pay: null,
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
            test2: '',
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