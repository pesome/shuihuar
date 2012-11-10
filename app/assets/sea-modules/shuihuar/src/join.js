define(function (require, exports, module) {
    var $ = require('jquery')

    var Join = function (btn, id) {
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