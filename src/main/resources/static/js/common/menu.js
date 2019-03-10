var __menu__ = [
    {
        id: 1,
        name: '许可信息录入',
        path: '',
        icon: 'fa fa-volume-control-phone',
        child: [
            {
                id: 1,
                name: '平台公司许可信息录入',
                path: '',
                icon: 'fa fa-bookmark'
            },
            {
                id: 2,
                name: '车辆许可信息录入',
                path: '',
                icon: 'fa fa-automobile'
            },
            {
                id: 3,
                name: '驾驶员许可信息录入',
                path: '',
                icon: 'fa fa-drivers-license'
            }

        ]
    },
    {
        id: 2,
        name: '许可信息对比',
        path: '',
        icon: 'fa fa-puzzle-piece',
        child: [
            {
                id: 1,
                name: '服务机构信息查询',
                path: '',
                icon: 'fa fa-institution'
            },
            {
                id: 2,
                name: '车辆信息查询',
                path: '',
                icon: 'fa fa-taxi'
            },
            {
                id: 3,
                name: '驾驶员信息查询',
                path: '',
                icon: 'fa fa-drivers-license'
            }

        ]
    },
    {
        id: 3,
        name: '平台基本信息',
        path: '',
        icon: 'fa fa-television',
        child: [
            {
                id: 1,
                name: '平台公司信息查询',
                path: '',
                icon: 'fa fa-suitcase'
            },
            {
                id: 2,
                name: '服务机构信息查询',
                path: '',
                icon: 'fa fa-rss-square'
            },
            {
                id: 3,
                name: '车辆信息查询',
                path: '/car/basic/car-info',
                icon: 'fa fa-taxi'
            },

            {
                id: 4,
                name: '驾驶员信息查询',
                path: '/car/basic/driver-info',
                icon: 'fa fa-drivers-license'
            },

            {
                id: 5,
                name: '平台公司接入条件查询',
                path: '',
                icon: 'fa fa-paw'
            }
        ]
    },
    {
        id: 4,
        name: '平台运营信息',
        path: '',
        icon: 'fa fa-hourglass-3',
        child:
            [
                {
                    id: 1,
                    name: '订单信息查询',
                    path: '',
                    icon: 'fa fa-shopping-bag'
                },
                {
                    id: 2,
                    name: '车辆轨迹查询',
                    path: '',
                    icon: 'fa fa-street-view'
                }
            ]
    },
    {
        id: 5,
        name:
            '平台统计报表',
        path: '',
        icon: 'fa fa-area-chart'
    }
    ,
    {
        id: 6,
        name:
            '数据分析',
        path:
            '',
        icon: 'fa fa-pie-chart',
        child:
            [
                {
                    id: 1,
                    name: '城市视角',
                    path: '',
                    icon: 'fa fa-subway'
                },
                {
                    id: 2,
                    name: '平台视角',
                    path: '',
                    icon: 'fa fa-window-restore'
                }
            ]
    }
];