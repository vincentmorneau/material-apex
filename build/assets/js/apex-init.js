/************
APEX Initialization
************/
$(function() {
    /* Grid - Handling s12 default override */
    $(".col.s12").each(function(){
        if ($(this).is(".s1,.s2,.s3,.s4,.s5,.s6,.s7,.s8,.s9,.s10,.s11")) {
            $(this).removeClass("s12");
        }
    });

    /* Fixed Action Button */
    $(".fixed-action-btn").siblings(".btn-floating, .btn, .btn-large, .btn-flat").addBack().wrapAll("<div class='fixed-action-btn' style='bottom: 45px; right: 24px;'>");
    $(".fixed-action-btn").siblings(".btn-floating, .btn, .btn-large, .btn-flat").wrapAll("<ul>").wrap("<li>");
    $("a.fixed-action-btn").removeClass("fixed-action-btn");

    // Vertical Alignment
    $(".valign-wrapper>.row").addClass("valign-wrapper");

    /* Fix for APEX  Select Template */
    $('select').closest('.input-field').removeClass('input-field');

    /* Parallax */
    $(".parallax-container").closest(".col").removeClass().closest(".row").removeClass();

    /* Dropdown */
    $( ".dropdown-button" ).each(function() {
        $( this ).prepend($(this).parent().siblings(".header").text());
    });

    /* Fix for label issue with many components. Need to have label after component. */
    $( ".input-field i, .u-TF-item--checkbox" ).each(function() {
	  	$( this ).after( $(this).siblings("label") );
	});

    /* Display only & read only */ 
    $(".display_only, fieldset.checkbox_group, fieldset.radio_group")
        .siblings("label")
        .addClass("active display-only")
        .closest('.input-field')
        .removeClass('input-field');

    /* Fix for fieldset issue. Put content after fieldset and remove fieldset */
    $( "fieldset" ).each(function() {
	  	$( this ).siblings("input").after( $(this).html() );
	  	$( this ).remove();
	});

    $("[id*='CHAR_COUNTER']").each(function(){
        $(this).closest("div").siblings("textarea").attr("length",$(this).next().text());
    });

    $('textarea').addClass('materialize-textarea');

    /* Media */
    $(".apex-materialbox img").addClass("materialboxed responsive-img").each(function() {
        $(this).attr("data-caption",$(this).parent().attr("data-caption"));
        $(this).parent().removeAttr("data-caption");
    });

    /* Tooltips */
    $( "[data-tooltip][data-tooltip!='']" ).each(function() {
        $( this ).siblings("i").attr( "data-tooltip", $(this).attr("data-tooltip") );
    });

    /* Icons */
    $("i[class='']").remove();
});
//# sourceMappingURL=apex-init.js.map