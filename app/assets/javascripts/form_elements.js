$(document).ready(function() {



    var elems = Array.prototype.slice.call(document.querySelectorAll('.switchery'));

    elems.forEach(function(html) {
        var switchery = new Switchery(html, {
            color: '#10CFBD'
        });
    });
});