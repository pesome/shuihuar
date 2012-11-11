define(function(require,exports,module){
    var $ = require('jquery')

    //edit title
    var teamTitle =$("#J_team_title")
    $('#J_edit_title').click(function(){
        $('<input type="text" style="float:left;">').insertAfter(teamTitle).blur(function(){
            teamTitle.show().html(this.value);
            $(this).remove();
        }).val(teamTitle.html()).get(0).focus();
       teamTitle.hide();
    });

    //分配
    var patch = $('.J_patch')
    patch.click(function(){
       $('<select><option>李永亮</option><option>马全华</option><option>张俊</option><option>李华慰</option></select>').appendTo(document.body).css({
           'position':'absolute',
           'left':$(this).offset().left,
           'top':$(this).offset().top
       }).change(function(){
               $(this).remove();
           })
    });
});