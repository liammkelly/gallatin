
$().ready( function() {

    $('map area').click( function(evt) {
        var opt = $(this).attr('title');
        $('.pagecontent').hide();
        $('#navmap').attr('src','assets/images/WebsiteMenu'+opt.charAt(0).toUpperCase() + opt.slice(1)+'.jpg');
        $('#'+opt).show();
        evt.preventDefault()
    })


})
