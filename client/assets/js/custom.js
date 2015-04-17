/************
Page Load
************/
$(function() {
    /* Grid - Defaults to s12 for columns if no other class have been specified*/
    //$('div>[class="col "]').addClass("s12");
    $(".col.s12").each(function(){
        if ($(this).is(".s1,.s2,.s3,.s4,.s5,.s6,.s7,.s8,.s9,.s10,.s11")) {
            $(this).removeClass("s12");
        }
    });

    /* Flow Text */
    //$(".flow-text-region p").addClass("flow-text");

    /* Fixed Action Button */
    $(".fixed-action-btn").siblings(".btn-floating, .btn, .btn-large, .btn-flat").addBack().wrapAll("<div class='fixed-action-btn' style='bottom: 45px; right: 24px;'>");
    $(".fixed-action-btn").siblings(".btn-floating, .btn, .btn-large, .btn-flat").wrapAll("<ul>").wrap("<li>");
    $("a.fixed-action-btn").removeClass("fixed-action-btn");

    /* Collapsible */
    $(".collapsible.accordion").collapsible({accordion : true});
    $(".collapsible.expandable").collapsible({accordion : false});

    /* Forms */
    $('.button-collapse').sideNav(/*{'edge': 'left'}*/);
    $('.datepicker').pickadate({
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 25 // Creates a dropdown of 15 years to control year
    });

    /* Select */
    $('select').not('.disabled').material_select();
    $('select').closest('.input-field').removeClass('input-field'); // Fix for APEX  Select Template

    /* Scrollspy & Pushpin */
    if ($('.table-of-contents').length > 0) {
    	$('.table-of-contents').pushpin({top:0, offset:64});
    }
    $('.scrollspy').scrollSpy();

    /* Parallax */
    $('.parallax').parallax();
    $(".parallax-container").closest(".col").removeClass().closest(".row").removeClass();

    /* Dropdown */
    $('.dropdown-button').dropdown({
        hover: false // Activate on click
    });
    $( ".dropdown-button" ).each(function() {
        $( this ).prepend($(this).parent().siblings(".header").text());
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

    /* Media */
    $(".apex-materialbox img").addClass("materialboxed responsive-img").each(function() {
        $(this).attr("data-caption",$(this).parent().attr("data-caption"));
        $(this).parent().removeAttr("data-caption");
    });
    $(".materialboxed").materialbox();
    $('.slider').slider();

    /* Tooltips */
    $( "[data-tooltip][data-tooltip!='']" ).each(function() {
        $( this ).siblings("i").attr( "data-tooltip", $(this).attr("data-tooltip") );
    });
    $("[data-tooltip][data-tooltip!='']").tooltip({delay: 50});

    /* Display only & read only */ 
    $(".display_only").siblings("label").addClass("active display-only").closest('.input-field').removeClass('input-field');

    /* Textarea Character Counter */
    $("[id*='CHAR_COUNTER']").each(function(){
        $(this).closest("div").siblings("textarea").attr("length",$(this).next().text());
    });
    $('textarea').characterCounter();
    $("i[class='']").remove();
});