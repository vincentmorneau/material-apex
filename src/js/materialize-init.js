/************
Materialize Initialization
************/
var materialAPEX = materialAPEX || {};

materialAPEX.select = {
    init: function () {
        $('form select').not('.disabled').material_select();
    }
};

materialAPEX.datepicker = {
    init: function () {
        $('.hasDatepicker')
            // .attr("type", "date")
            .each(function(){
            // replace jquery datepicker formats with pickadate.js formats
            var format = $(this).datepicker('option', 'dateFormat')
                            .replace("dd", "dd")
                            .replace("d", "d")
                            .replace("oo", "dd")
                            .replace("o", "dd")
                            .replace("DD", "dddd")
                            .replace("D", "ddd")
                            .replace("mm", "mm")
                            .replace("m", "m")
                            .replace("MM", "mmmm")
                            .replace("M", "mmm")
                            .replace("yy", "yyyy")
                            .replace("y", "yy")
                            ;

            // default date is not working for now
            // var defaultDate = $(this).datepicker('option', 'defaultDate');

            $(this).pickadate({
                selectMonths: $(this).datepicker('option', 'changeMonth'), // Creates a dropdown to control month
                selectYears: $(this).datepicker('option', 'yearRange'), // Creates a dropdown of years to control year
                format: format,
                min: $(this).datepicker('option', 'minDate') || undefined,
                max: $(this).datepicker('option', 'maxDate') || undefined,
                onClose: function () {
                    $(document.activeElement).blur();
                }
            });
        });

        $('.hasDatepicker')
            .datepicker( "destroy" );
    }
};

materialAPEX.materialize = {
    init: function () {
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

        /* Scrollspy & Pushpin */
        if ($('.apex-rds li').length > 0) {
            $(".ma-body-column-css-classes").addClass("col s12 m9 l10");
            $(".apex-rds-container").addClass("col hide-on-small-only m3 l2");

            var pushpinOffset = ($(".nav-breadcrumbs").length === 0 ? 64 : 128);
            $('.apex-rds').pushpin({top:0, offset:pushpinOffset});
        }

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

        /* Tabs */
        $('ul.tabs').tabs();

        /* Carousels */
        $('.carousel.carousel-slider').carousel({full_width: true});
        $('.carousel:not(.carousel-slider)').carousel();

        /* Tabular Form */
        if (typeof apex.widget.tabular != 'undefined') {
            var addRowOld = apex.widget.tabular.addRow;
            apex.widget.tabular.addRow = function(){
                addRowOld();
                materialAPEX.items.init();
                materialAPEX.select.init();
                $(".select-wrapper .select-wrapper").siblings().remove().end().unwrap();
            };
        }
    }
};

$(function() {
    materialAPEX.select.init();
    materialAPEX.datepicker.init();
    materialAPEX.materialize.init();

    apex.jQuery('select').on('apexafterrefresh', function(){
        materialAPEX.select.init();
        materialAPEX.datepicker.init();
    });

    $(document).ajaxSuccess(function() {
        materialAPEX.select.init();
        materialAPEX.datepicker.init();
    });
});
