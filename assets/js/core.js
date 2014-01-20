// ON DOCUMENT READY
$().ready( function() {

    $('map area').click( function(evt) {
        var opt = $(this).attr('title');
        $('.pagecontent').hide();
        $('#map').attr('src','assets/images/WebsiteMenu'+opt.charAt(0).toUpperCase() + opt.slice(1)+'.jpg');
        $('#'+opt).show();
        evt.preventDefault();
        // TODO: fix these relative paths for production
        if( opt === 'event_info' ) {
            $('#content_area').css('background-image','url(../gallatin/assets/images/AlbertGallatinContentLogosNCopy.jpg)');
        } else {
            $('#content_area').css('background-image','url(../gallatin/assets/images/AlbertGallatinContent.jpg)');
        }
    })

    $('#register_btn').click( function(evt) {
        $('#form form').ajaxSubmit({
            success : function(r) {
                alert('Success');
            }
        })
    })

    // EVENT HANDLERS
    $(window).bind("resize", listenWidth)

    $('<div/>').css('background-image','url(../gallatin/assets/images/AlbertGallatinContent.jpg)');

})

// FUNCTIONS
function listenWidth( e ) {
    if($(window).width()>320) {
        $("#about_area").remove().insertAfter($("#content_area"));
    } else {
        $("#about_area").remove().insertBefore($("#content_area"));
    }
}
