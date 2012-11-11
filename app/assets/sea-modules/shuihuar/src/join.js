define(function (require, exports, module) {
    var $ = require('jquery'),
        modal = require('./modal')

    var Join = function (btn, id) {
        $(btn).click(function () {
            $.ajax({
                url:'/groups/join/' + id,
                data:{
                },
                dataType:'json'
            }).done(function () {
                    new modal('<p>申请已经提交</p>', '申请加入').open();
                })
        });
    }

    module.exports = Join;
});