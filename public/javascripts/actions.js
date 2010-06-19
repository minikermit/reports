$(function() {


    /* If JavaScript is active slide out menu on the left */
    $('#navigation a').stop().animate({'marginLeft':'-85px'},1000);

    $('#navigation > li').hover(
                                function () {
                                                $('a',$(this)).stop().animate({'marginLeft':'-2px'},200);
                                            },
                                function () {
                                                $('a',$(this)).stop().animate({'marginLeft':'-85px'},200);
                                            }
                );


	/* If JavaScript is active create a link to slide the form out */
	$('#getform a').click(function(){
		$('#selection').slideToggle('slow');
		return false;
	});//
	
	$('#selection').hide();//
	$('#reader').fadeIn('slow');//  */
	
	/* Submit form via Ajax */
	var options = {
        target:       '#rssloader',
        beforeSubmit:  showRequest,
        success:       showResponse,
        clearForm:     false,
        resetForm:     false
    };

    // bind form using 'ajaxForm'
    $('#selection').ajaxForm(options);




});// End jQuery
