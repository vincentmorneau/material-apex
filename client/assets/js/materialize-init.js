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

    /* SideNav */
    if ($('.button-collapse').length > 0) {
        $('.button-collapse').sideNav({
        edge: $(".side-nav").data("direction").trim()
        });
    }
    
    /* Forms */
    selectInit();

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

    /* Tabular Form */
    if (typeof apex.widget.tabular != 'undefined') { 
        var addRowOld = apex.widget.tabular.addRow;
        apex.widget.tabular.addRow = function(){
            addRowOld();
            formInit();
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