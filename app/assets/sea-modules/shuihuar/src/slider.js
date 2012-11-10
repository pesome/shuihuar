define(function (require, exports, module) {
    var $ = require('jquery'),
        currentClass = 'current';

    var Slider = function (triggers, elements) {
        this.triggers = $(triggers);
        this.elements = $(elements);
        this.unitWidth = parseInt(this.elements.css('width'));
        this.length = this.elements.length;
        this.track = this.elements.parent().attr('width', this.length * this.unitWidth);
        this.options = { interval:5000, speed:200 };
        this.index = 0;

        var self = this;

        this.triggers.each(function(i){
            $(this).hover(function () {
                self.switchTo(i)
                self.stopAuto();
            }, function () {
                self.auto();
            });
        })

        this.switchTo(0);
        this.auto();

    }

    Slider.prototype = {
        constructor:Slider,
        switchTo:function (i) {
            if (i >= this.length) {
                return;
            }
            this.triggers.removeClass(currentClass);
            this.triggers.eq(i).addClass(currentClass);

            this.track.animate({
                left:-this.unitWidth * i
            }, this.options.speed);
            this.index = i;
        },
        stop:function () {
            this.track.stop();
        },
        auto:function () {
            var self = this;
            this.interval = setInterval(function () {
                self.switchTo((self.index + 1) % self.length)
            }, this.options.interval);
        },
        stopAuto:function () {
            clearInterval(this.interval);
        }
    }

    module.exports = Slider;

});