define(function (require, exports, module) {
    var $ = require('jquery')

    var watch = function (fid,cb) {
        $.ajax({
            url:'/user/concern/'+fid,
            data:{
            },
            dataType:'json'
        }).done(function(data){
            cb(data);
            });
    }

    module.exports = watch;
});