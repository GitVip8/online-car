var $$location = window.location;
var __root__$$__VM = new Vue({
    el: "#____root____",
    mixins: [(typeof __mixin__ == "undefined" ? {} : __mixin__)],
    created: function () {
        this.__location__ = $$location;
    },
    data: {
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

        }
    }
})