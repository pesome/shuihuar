define(function (require, exports, module) {
    var $ = require('jquery');


    var Login = function (form) {
        this.form = $(form);
        this.fields = this.form.find('.J_field')
    }
    Login.prototype = {
        constructor:Login,
        check:function () {
            var pass = true;
            this.fields.each(function (field) {
                if (field.value.trim() === "") {
                    pass = false;
                    alert('请填写完整');
                    return  false;
                }
            });
        },
        login:function () {
            if (this.check()) {
                $.ajax({
                    url:'',
                    data:{

                    },
                    dataType:'json'
                }).done(function (data) {

                    })
            }
        }
    }

    exports.Login = Login;
});