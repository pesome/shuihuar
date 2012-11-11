define(function (require, exports, module) {
    var $ = require('jquery'),
        body = document.body;


    var Modal = function (content, title, options) {

        this.content = content || '';
        this.title = title || '';
        this.optons = options || {};
    }

    Modal.prototype = {
        constructor:Modal,
        open:function () {
            var layer = $('<div class="modal-bg"></div>');
            layer.appendTo(body);
            this.layer = layer;
            var self = this;

            var box = $('<div class="modal">\
                    <div class="title">\
                        <span class="title-text">' + this.title + '</span>\
                        <a class="close" href="javascript:;">关闭</a>\
                    </div>\
                    <div class="content">' + this.content + '</div>\
                    <div class="bottom">\
                    <a class="button btn" href="javascript:;">确定</a>\
                    </div>\
                </div>');
            box.appendTo(body).css({
                'width':this.optons.width || 300,
                'margin-left':-(this.optons.width || 300) / 2,
                'margin-top':-parseInt(box.css('height')) / 2
            });
            this.box = box;

            box.find('.close').click(function(){
                self.close();
            });
            box.find('.btn').click(function(){
                self.close();
            })


        },
        close:function () {
            this.layer && this.layer.remove();
            this.box && this.box.remove();
        }
    }

    module.exports = Modal;

});