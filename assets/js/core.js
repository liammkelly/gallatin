// ON DOCUMENT READY
$().ready( function() {

    $('map area, #phone_nav_area DIV A').click( function(evt) {
        var opt = $(this).attr('title');
        $('.pagecontent').hide();
        $('#phone_nav_area DIV A').css('font-weight','normal');
        $('#phone_nav_area #phone_nav_' + opt + ' A').css('font-weight','bold');
        $('#map').attr('src','assets/images/WebsiteMenu'+opt.charAt(0).toUpperCase() + opt.slice(1)+'.jpg');
        $('#altmap').attr('src','assets/images/820WebsiteMenu'+opt.charAt(0).toUpperCase() + opt.slice(1)+'.jpg');
        $('#'+opt).show();
        evt.preventDefault();
    })

    $('#register_btn').click( function(evt) {
        if( $('input[name=name]').val() !== '' && $('input[name=email]').val() !== '' && $('input[name=title]').val() !== '' ) {
            $('#form form').ajaxSubmit({
                success : function(r) {
                    $('<div/>')
                        .html('Thank you for entering your information.<P><b>Please make payment to complete your registration.</b><P>Symposium Fee: $ 200.00 per attendee<P>Registration fee covers only part of the cost of the<br>Symposium.  Additional donations are appreciated.<P><b>Payments from the U.S.:</b><P>Kindly make checks payable to:<br>Albert Gallatin Symposium<br>Wolfgang Klietmann<br>P.O. Box 258<br>North Marshfield, MA 02059-0258, USA<P><b>Payments from abroad:</b><p>Wiring instructions:<br>Citizens Bank, 1 Citizens Drive, Riverside, R.I. 02915<br>Albert Gallatin Symposium<br>ABA: 011500120<br>Account#: 1324210769<br>Routing#: 211070175<br>SWIFT CODE: CTZI US 33')
                        .dialog({
                            height:450,
                            width:330,
                            autoOpen: true,
                            title : "Success",
                            modal: true
                        })
                }
            })
        } else {
            $('<div/>')
                .html('<span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;"></span> One or more fields in the registration form are blank.  Please fill out the entire form.')
                .dialog({
                    height:100,
                    autoOpen: true,
                    title : "Attention",
                    modal: true
                })
        }
    })

})

