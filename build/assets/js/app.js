/************
Materialize Initialization
************/
$(function() {
    /* Collapsible */
    $(".collapsible.accordion").collapsible({accordion : true});
    $(".collapsible.expandable").collapsible({accordion : false});

    /* Forms */
    $('.button-collapse').sideNav();
    $('.datepicker,.u-TF-item--datepicker').pickadate({
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 25 // Creates a dropdown of 15 years to control year
    });

    /* Select */
    $('select').not('.disabled').material_select();

    /* Scrollspy & Pushpin */
    if ($('.table-of-contents').length > 0) {
    	$('.table-of-contents').pushpin({top:0, offset:64});
    }
    $('.scrollspy').scrollSpy();

    /* Parallax */
    $('.parallax').parallax();

    /* Dropdown */
    $('.dropdown-button').dropdown({
        hover: false // Activate on click
    });

    /* Media */
    $(".materialboxed").materialbox();
    $('.slider').slider();

    /* Tooltips */
    $("[data-tooltip][data-tooltip!='']").tooltip();

    /* Textarea Character Counter */
    $('textarea').characterCounter();
});
//# sourceMappingURL=app.js.map