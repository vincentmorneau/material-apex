/************
Materialize Initialization
************/
function selectInit() {
    /*$('.material-apex-datepicker').pickadate({
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 25 // Creates a dropdown of 15 years to control year
    });*/

    $('select').not('.disabled').material_select();
}

function materialInit() {
    /* Collapsible */
    $(".collapsible.accordion").collapsible({accordion : true});
    $(".collapsible.expandable").collapsible({accordion : false});

    // ScrollFire
    var scrollFireOptions = [];
    $(".enable-scrollfire").each(function(){
        scrollFireOptions.push({
            selector: '#' + this.id,
            offset: parseInt($(this).attr("offset") || $("#" + this.id + " [offset]").attr("offset")) || 0,
            callback: $(this).attr("callback") || $("#" + this.id + " [callback]").attr("callback")
        });
    });
    Materialize.scrollFire(scrollFireOptions);

    /* SideNav */
    if ($('.button-collapse').length > 0) {
        var edgeDirection = $( "link[href*='app.rtl']").length > 0 ? 'right' : 'left';
        $('.button-collapse').sideNav({
        edge: edgeDirection
        });
    }

    /* Forms */
    selectInit();

    /* Scrollspy & Pushpin */
    var pushpinOffset = ($(".nav-breadcrumbs").length === 0 ? 64 : 128);
    if ($('.table-of-contents').length > 0) {
        $('.table-of-contents').pushpin({top:0, offset:pushpinOffset});
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

    /* Tabular Form */
    if (typeof apex.widget.tabular != 'undefined') {
        var addRowOld = apex.widget.tabular.addRow;
        apex.widget.tabular.addRow = function(){
            addRowOld();
            selectInit();
            $(".select-wrapper .select-wrapper").siblings().remove().end().unwrap();
        };
    }
}

$(function() {
    materialInit();

    apex.jQuery('select').on('apexafterrefresh', function(){
        selectInit();
    });
});
