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
                    name: '车辆基本信息',
                    properties: [
                        {
                            key: '平台名称',
                            value: this.selected.company.companyName
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
                            key: '车身颜色',
                            value: this.selected.plateColor
                        },
                        {
                            key: '车牌号码',
                            value: this.selected.vehicleNo
                        },
                        {
                            key: '车牌颜色',
                            value: this.selected.vehicleColor
                        },
                        {
                            key: '车辆厂牌',
                            value: this.selected.brand
                        },
                        {
                            key: '车辆型号',
                            value: this.selected.model
                        },
                        {
                            key: '核定载客位',
                            value: this.selected.seats
                        },
                        {
                            key: '车辆类型',
                            value: this.selected.vehicleType
                        },
                        {
                            key: '发动机型号',
                            value: this.selected.engineId
                        },
                        {
                            key: '车辆VIN码',
                            value: this.selected.vin
                        },
                        {
                            key: '车辆燃料类型',
                            value: this.selected.fuelType
                        },
                        {
                            key: '发动机排量',
                            value: this.selected.engineDisplace
                        },
                    ]
                },
                {
                    name: '车辆登记信息',
                    properties: [
                        {
                            key: '车辆所有人',
                            value: this.selected.ownerName
                        },
                        {
                            key: '车辆经营区域',
                            value: this.selected.transArea
                        },
                        {
                            key: '车辆注册日期',
                            value: this.selected.certifyDateA
                        },
                        {
                            key: '车辆初次登记日期',
                            value: this.selected.certifyDateB
                        },
                        {
                            key: '车辆检修状态',
                            value: this.selected.fixState
                        },
                        {
                            key: '车辆下次年检时间',
                            value: this.selected.nextFixDate
                        },
                        {
                            key: '年审不合格',
                            value: this.selected.checkState
                        },
                        {
                            key: '报备日期',
                            value: this.selected.registerDate
                        },
                        {
                            key: '服务类型',
                            value: this.selected.commercialType
                        },
                        {
                            key: '运价类型',
                            value: this.selected.fareType
                        }
                    ]
                },
                {
                    name: '网络预约出租汽车运输证信息',
                    properties: [
                        {
                            key: '运输证字号',
                            value: this.selected.certificate
                        },
                        {
                            key: '车辆运输证发证机构',
                            value: this.selected.transAgency
                        },
                        {
                            key: '车辆运输证有效期起',
                            value: this.selected.transDateStart
                        },
                        {
                            key: '车辆运输证有效期止',
                            value: this.selected.transDateStop
                        }
                    ]
                },
                {
                    name: '网络预约出租卫星设备信息',
                    properties: [
                        {
                            key: '发票打印设备序列号',
                            value: this.selected.feePrintId
                        },
                        {
                            key: '卫星定位装置品牌',
                            value: this.selected.gpsbrand
                        },
                        {
                            key: '卫星定位装置型号',
                            value: this.selected.gpsmodel
                        },
                        {
                            key: '卫星定位装置IMEI号',
                            value: this.selected.gpsimei
                        },
                        {
                            key: '卫星定位设备安装日期',
                            value: this.selected.gpsinstallDate
                        }
                    ]
                },
                {
                    name: '车辆照片',
                    properties: [
                        {
                            key: '车辆照片',
                            value: this.selected.photoId
                        }
                    ]
                }
            ]
        },
    },
    data: {
        selected: null,
        infoTableItems: [],
        dialogVisible: false,
        tableColumn: [
            {
                name: 'vehicleNo',
                label: '车牌号',
                width: 0,
            },
            {
                name: 'company.companyName',
                label: '公司名称',
                width: 0,
            }, {
                name: 'ownerName',
                label: '拥有人',
                width: 0,
            }
        ],

        tableData: [],
        condition: {
            test1: '',
            test2: '',
        },
        page: {
            currentPage: 1,
            size: 10
        },
        sort: {}
    },
    methods:
        {
            find: function () {
                var _this = this;
                axios.get('/car/basic/car-info/list', {params: this.page}).then(function (r) {
                    if (r.data.code === 0) {
                        var d = r.data.data;
                        _this.tableData = d.content;
                        _this.page = {
                            totalPages: d.totalPages,
                            totalElements: d.totalElements,
                            currentPage: (d.number + 1),
                            size: d.size
                        }
                    }
                })
            }
            ,
            handleDetail: function (i, row) {
                this.selected = row;
                this.dialogVisible = true;
            }
            ,
            handleSizeChange: function (a) {
                console.info(this.page)
                this.find();
            }
            ,
            handleCurrentChange: function (b) {
                console.info(this.page)
                this.find();
            },
            handelSortChange: function () {

            }
        }

}