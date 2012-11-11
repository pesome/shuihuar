define(function (require, exports, module) {
    var $ = require('jquery');

    var like = function(id,cb){
        cb();
        $.ajax({
            url:'/groups/concern/'+id,
            data:{
            },
            dataType:'json'
        }).done(function(data){
                cb(data);
            })
    }

    exports.like = like;
});