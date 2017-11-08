var recordId = +($('#recordId').text());

$(document).ready(function() {
    $('.datarow').addClass('hidedata');
    $('.datarow').first().addClass('showdata');
    $('.firstrecord').addClass('hidemessage');
    $('.lastrecord').addClass('hidemessage');
})

$('#next').on('click', function() {

    if ($('div.showdata').nextAll('.datarow:first').length) {
        $('div.showdata').nextAll('.datarow:first').addClass('showdata').removeClass('hidedata');
        $('.showdata').first().removeClass('showdata').addClass('hidedata');
        $('.firstrecord').addClass('hidemessage');
    }
    else {
        $('.lastrecord').removeClass('hidemessage');
    }

})

$('#previous').on('click', function() {

    if ($('div.showdata').prevAll('.datarow:first').length) {
        $('div.showdata').prevAll('.datarow:first').addClass('showdata').removeClass('hidedata');
        $('.showdata').last().removeClass('showdata').addClass('hidedata');
        $('.lastrecord').addClass('hidemessage');
    }
    else {
        $('.firstrecord').removeClass('hidemessage');
    }

})


