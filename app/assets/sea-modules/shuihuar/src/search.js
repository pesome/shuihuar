define(function (require, exports, module) {
    var $ = require('jquery'),
        hoverClass = 'hover';
    var Search = function (input, list) {
        this.trigger = $(input);
        this.list = $(list);
        this.list.append('<li>搜索"<span class="J_key key"></span>"相关团队</li><li>搜索"<span class="J_key key"></span>"相关任务</li><li>搜索"<span class="J_key key"></span>"相关用户</li>');
        this.items = this.list.find('li')
        this.length = this.items.length;
        this.index = -1;
        this.bind();
    };

    Search.prototype = {
        constructor:Search,
        bind:function () {
            var self = this;
            this.trigger.keyup(function (e) {
                var direction = [38, 40];
                if (direction.indexOf(e.which) !== -1) {
                    //up and down
                    e.preventDefault();
                    self.move(e.which);
                } else if (e.which == 13) {
                    //enter
                    self.search();
                } else {
                    var value = $(this).val().trim();
                    if (value) {
                        self.show();
                        self.list.find('.J_key').text(value);
                    } else {
                        self.hide();
                    }
                }
            }).blur(function(){
                    self.hide();
                })
        },
        show:function () {
            if (!this.isShow) {
                this.list.show();
                this.isShow = true;
            }
        },
        hide:function () {
            this.list.hide();
            this.isShow = false;
        },
        move:function (code) {
            this.items.removeClass(hoverClass);
            switch (code) {
                //up
                case 38:
                    if (this.index < 0) {
                        return;
                    }
                    this.index--;
                    break;
                case 40:
                    if (this.index == this.length) {
                        return;
                    }
                    this.index++;
                    break;
            }
            if (this.index >= 0 && this.index < this.length) {
                this.items.eq(this.index).addClass(hoverClass);
            }
        },
        search:function () {

        }
    }

    exports.Search = Search;
});