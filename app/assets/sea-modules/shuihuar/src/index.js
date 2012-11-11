define(function (require, exports, module) {
    var $ = require('jquery');


    //slider
    var Slider = require('./slider');
    var holder = $('#index_slider');
    new Slider(holder.find('.slide-trigger .slide-trigger-item'), holder.find('.slide-list .slide-item'))

    //init search

    //join
    var Join = require('./join')
    $('.join-team').click(function () {
        new Join(this, $(this).attr('group_id'));
    });

    //watch
    var watch = require('./watch')
    $('.welfare-owner .button').click(function () {
        watch($(this).attr('user_id'), function (t) {
            $(this).text('已关注');
        });
    });
    // like
    var Like = require('./like');
    $('.welfare-item .white-btn').click(function (e) {
        var btn = $(this);
        e.preventDefault();
        Like.like(btn.attr('group_id'), function () {
            var number = btn.next();
            number.text(+number.text() + 1);
        });
    });

    return;
    //init login
    var Login = require('./log');
    new Login($());

});