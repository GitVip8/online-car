var $$location = window.location;
var __root__$$__VM = new Vue({
    el: "#____root____",
    mixins: [(typeof __mixin__ == "undefined" ? {} : __mixin__)],
    created: function () {
        this.__location__ = $$location;
        this.initMenuAndBoard__();
    },
    data: {

        activeMenuIndex__: '',
        breadcrumbItems__: [],
        __location__: {},
        //菜单折叠
        isMenuCollapse__: false,
        //菜单信息
        menu__: __menu__,
        //修改密码是否可
        password__: {
            passwordDialogVisible__: false,
            content__: {
                old: '',
                new: ''
            }
        }

    },
    methods: {

        initMenuAndBoard__: function () {
            var _this = this;
            var pathname = this.__location__.pathname;
            this.menu__.forEach(function (a, i) {
                if (a.child) {
                    a.child.forEach(function (b, j) {
                        if (b.path && pathname.indexOf(b.path) > -1) {
                            _this.activeMenuIndex__ = i + "_" + j;
                            _this.breadcrumbItems__.push(a.name);
                            _this.breadcrumbItems__.push(b.name);
                            return false;
                        }
                    })
                }
            })
        },
        //触发菜单展开
        handleSwitchMenu__: function () {
            this.isMenuCollapse__ = !this.isMenuCollapse__
        },
        handleCommand__: function (command) {
            switch (command) {
                case 'cp':
                    this.changePassword();
                    break;
                case 'so':
                    this.signOut__();
                    break;
            }
        },
        //登出
        signOut__: function () {
            window.location.href = '/logout'
        },
        changePassword: function () {
            this.password__.passwordDialogVisible__ = true
        },
        doChangePassword__: function () {

        },
        menuSelect__: function (index) {
            if (!index) return;
            var path = index.split("_");
            var selected = this.menu__[path[0]].child[path[1]];
            window.location.href = selected.path;
        }

    }
})