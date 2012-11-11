define(function (require, exports, module) {
    var $ = require('jquery');

    //init search
    var Search = require('./search').Search;
    new Search($("#J_search"), $('#J_search_list'));
});