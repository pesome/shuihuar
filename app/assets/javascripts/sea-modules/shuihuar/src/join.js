define(function (require, exports, module) {
    var $ = require('jquery'),
        modal = require('./modal')

    var Join = function (btn, id) {
        new modal('<p>申请已经提交</p>','申请加入').open();
        return;
        $(btn).click(function () {
            $.ajax({
                url:'',
                data:{

                },
                dataType:'json'
            }).done(function(){

                })
        });
    }

    module.exports = Join;
});