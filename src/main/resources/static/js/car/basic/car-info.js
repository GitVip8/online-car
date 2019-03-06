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
    data: {
        dialogVisible: false,
        condition: {
            test1: '',
            test2: ''
        },
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
        page: {
            currentPage: 1,
            size: 10,
        }
    },
    methods: {
        find: function () {
            var _this = this;
            axios.get('/car/basic/car-info/list', {params: this.page}).then(function (r) {
                if (r.data.code === 0) {
                    _this.tableData = r.data.data.content;
                }
                console.info(r)
            })
        },
        handleDetail: function (i, row) {
            console.info(i, row);
            this.dialogVisible=true;
        },
        handleSizeChange: function () {

        },
        handleCurrentChange: function () {

        }
    }

}