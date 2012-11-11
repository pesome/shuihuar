define(function (require, exports, module) {
    var $ = require('jquery')

    var watch = function (userid,fid,cb) {
        $.ajax({
            url:'http://42.121.107.159/ajax/follow_user',
            data:{
                user_id:userid,
                follower_id:fid
            },
            dataType:'json'
        }).done(function(data){
            cb(data);
            });
    }

    module.exports = watch;
});