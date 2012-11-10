define(function (require, exports, module) {
    var $ = require('jquery');

    var like = function(id,cb){
        $.ajax({
            url:'',
            data:{

            },
            dataType:'json'
        }).done(function(data){
                cb();
            })
    }

    exports.like = like;
});