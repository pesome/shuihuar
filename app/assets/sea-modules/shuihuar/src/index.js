define(function (require, exports, module) {
    var $ = require('jquery');


    //slider
    var Slider = require('./slider');
    var holder = $('#index_slider');
    new Slider(holder.find('.slide-trigger .slide-trigger-item'), holder.find('.slide-list .slide-item'))

    //init search
    var Search = require('./search').Search;
    new Search($("#J_search"), $('#J_search_list'));

    return;
    //init login
    var Login = require('./log');
    new Login($());

    // like
    var Like = require('./like');
    $('.J_like').click(function () {
        var btn = $(this);
        Like.like(btn.attr('group_id'), function () {
            var number = btn.next();
            number.text(number.text() + 1);
        });
    });

});