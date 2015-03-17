/************
Page Load
************/
$(function() {
    $('select').not('.disabled').material_select();
    $('.button-collapse').sideNav({'edge': 'left'});
    $('.datepicker').pickadate({
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 25 // Creates a dropdown of 15 years to control year
    });

    if ($('.table-of-contents').length > 0)
    	$('.table-of-contents').pushpin({top:0, offset:64});

    $('.scrollspy').scrollSpy();
    $('.parallax').parallax();

    $('.dropdown-button').dropdown({
        hover: false // Activate on click
    });

    /* Fix for combined icon and label issue */
    $( ".input-field i" ).each(function() {
	  	$( this ).after( $(this).siblings("label") );
	});

    /* Fix for textareas issue */
    $( ".input-field fieldset" ).each(function() {
	  	$( this ).siblings("input").after( $(this).html() );
	  	$( this ).remove();
	});

    /* Materialbox */
    $(".apex-materialbox img").addClass("materialboxed responsive-img").each(function() {
        $(this).attr("data-caption",$(this).parent().attr("data-caption"));
        $(this).parent().removeAttr("data-caption");
    });
    $(".materialboxed").materialbox();
    
});