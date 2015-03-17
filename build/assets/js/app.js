(function ($) {
  $(document).ready(function() {

    $(document).on('click.card', '.card', function (e) {
      if ($(this).find('.card-reveal').length) {
        if ($(e.target).is($('.card-reveal .card-title')) || $(e.target).is($('.card-reveal .card-title i'))) {
          $(this).find('.card-reveal').velocity({translateY: 0}, {duration: 225, queue: false, easing: 'easeInOutQuad'});
        }
        else if ($(e.target).is($('.card .activator')) || $(e.target).is($('.card .activator i')) || $(e.target).is($('.card .activator img')) ) {
          $(this).find('.card-reveal').velocity({translateY: '-101%'}, {duration: 300, queue: false, easing: 'easeInOutQuad'});
        }
      }


    });

  });
}( jQuery ));
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
//# sourceMappingURL=app.js.map