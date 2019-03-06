var vm = new Vue({
    el: "#login-form",
    data: {
        disable: false,
        user: {
            username: "",
            password: ""
        }
    },
    methods: {
        doLogin: function () {
            var _this = this;
            var instance = axios.create({});
            instance.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
            this.disable = true;
            instance.post("/login", "username=" + this.user.username + "&password=" + this.user.password).then(function (r) {
                if (r.data.code !== 0) {
                    _this.$message.error(r.data.msg);
                    _this.disable = false;
                } else {
                    window.location.href = "/dashboard";
                }
            }).catch(function (e) {
                console.info(e)
            })
        }
    }
});