/**
 * @namespace materialAPEX
 **/
var materialAPEX = materialAPEX || {};

/**
 * @module observe
 **/
materialAPEX.observe = {
    toolbar: function() {
        if (!classExists("a-Toolbar-group")) return;
        materialAPEX.debug.time("materialAPEX.observe.toolbar");

        var observerConfig = {
            childList: true
        };

        var selector = ".a-Toolbar-group select";

        var observer = new MutationObserver(function(mutations) {
            $(selector).material_select();
            materialAPEX.ig.init();
        });

        $(selector).each(function() {
            observer.observe(this, observerConfig);
        });

        materialAPEX.debug.timeEnd("materialAPEX.observe.toolbar");
    },

    select: function() {
        if (!classExists("a-GV-floatingItemContent")) return;
        materialAPEX.debug.time("materialAPEX.observe.select");

        var observerConfig = {
            childList: true
        };

        var observer = new MutationObserver(function(mutations) {
            mutations.forEach(function(mutation) {
                if (mutation.addedNodes.length > 0) {
                    $(mutation.target).find("select").material_select();
                }
            });
        });

        $(".a-GV-floatingItemContent").each(function() {
            observer.observe(this, observerConfig);
        });

        materialAPEX.debug.timeEnd("materialAPEX.observe.select");
    }
};

/**
 * @module ig
 **/
materialAPEX.ig = {
    init: function() {
        if (!classExists("a-IG")) return;
        materialAPEX.debug.time("materialAPEX.ig.init");

        $(".a-Toolbar-group")
            .removeClass("force-hide")
            .addClass("force-show")
            .each(function() {
                var group = $(this);

                // hide the groups that have no visible elements
                if (group.find(":visible").length === 0) {
                    group.removeClass("force-show").addClass("force-hide");
                }

                // hide the groups that have no select options
                if (group.find("select").length > 0 &&
                    group.find("select").find("option").length === 0) {
                    group.removeClass("force-show").addClass("force-hide");
                }

                // hide the groups that were forced to display: none
                // that is weird fix but it works....
                if (group.find("select").attr("style") === "display: none;") {
                    group.removeClass("force-show").addClass("force-hide");
                }
            });

        // trigger a resize for the IG fixed header
        setTimeout(function(){
            $(document).trigger("apexwindowresized");
        }, 250);

        materialAPEX.debug.timeEnd("materialAPEX.ig.init");
    }
};

/**
 * @module select
 **/
materialAPEX.select = {
    init: function() {
        materialAPEX.debug.time("materialAPEX.select.init");
        $('form select').not('.disabled').material_select();
        materialAPEX.debug.timeEnd("materialAPEX.select.init");
    },

    ir: function() {
        materialAPEX.debug.time("materialAPEX.select.ir");
        $('.a-IRR select').not('.disabled').material_select();
        materialAPEX.debug.timeEnd("materialAPEX.select.ir");
    },

    refresh: function(selector) {
        materialAPEX.debug.time("materialAPEX.select.refresh");
        var exclude = ".a-Property-field--select, .a-IRR-dialogTable select";
        // reset focus on select elements
        setTimeout(function(){
            $(selector).material_select("destroy");
            $(selector).not(exclude).material_select();
            $(selector).change(function(){
                $(selector).material_select("destroy");
                $(selector).not(exclude).material_select();
            });
        }, 250);
        materialAPEX.debug.timeEnd("materialAPEX.select.refresh");
    }
};

/**
 * @module datepicker
 **/
materialAPEX.datepicker = {
    init: function() {
        if (!classExists("hasDatepicker")) return;
        materialAPEX.debug.time("materialAPEX.datepicker.init");

        var headerHtml = function (day, month, dayNum, year) {
            return '<div class="ui-datepicker-material-header">' +
                '<div class="ui-datepicker-material-year">' + year + '</div>' +
                '<div class="ui-datepicker-material-day">' + day + ', ' + month + ' ' + dayNum +'</div>' +
                // '<div class="ui-datepicker-material-month">' + month + '</div>' +
                // '<div class="ui-datepicker-material-day-num">' + dayNum + '</div>' +
            '</div>';
        };

        $(document).on("focus", ".hasDatepicker", function() {
            $('.ui-datepicker select').material_select();
            $(".ui-datepicker .ui-datepicker-material-header").remove();
            var date = $(this).datepicker('getDate') || new Date();
            var day = $.datepicker.formatDate('D', date);
            var month = $.datepicker.formatDate('MM', date);
            var dayNum = $.datepicker.formatDate('d', date);
            var year = $.datepicker.formatDate('yy', date);
            $(".ui-datepicker").prepend(headerHtml(day, month, dayNum, year));
        });

        materialAPEX.debug.timeEnd("materialAPEX.datepicker.init");
    }
};

/**
 * @module materialize
 **/
materialAPEX.materialize = {
    init: function() {
        materialAPEX.debug.time("materialAPEX.materialize.init");

        /* Collapsible */
        $(".collapsible.accordion").collapsible({
            accordion: true
        });
        $(".collapsible.expandable").collapsible({
            accordion: false
        });

        // ScrollFire
        var scrollFireOptions = [];
        $(".enable-scrollfire").each(function() {
            scrollFireOptions.push({
                selector: '#' + this.id,
                offset: parseInt($(this).attr("offset") || $("#" + this.id + " [offset]").attr("offset")) || 0,
                callback: $(this).attr("callback") || $("#" + this.id + " [callback]").attr("callback")
            });
        });
        Materialize.scrollFire(scrollFireOptions);

        /* SideNav */
        if ($('.button-collapse').length > 0) {
            // var edgeDirection = $("link[href*='app.rtl']").length > 0 ? 'right' : 'left';

            $('.button-collapse').sideNav(/*{
                edge: edgeDirection
            }*/);
        }

        /* Scrollspy & Pushpin */
        if ($('.apex-rds li').length > 0) {
            $(".ma-body-column-css-classes").addClass("col s12 m9 l10");
            $(".apex-rds-container").addClass("col hide-on-small-only m3 l2");

            var pushpinOffset = ($(".nav-breadcrumbs").length === 0 ? 64 : 128);
            $('.apex-rds').pushpin({
                top: 0,
                offset: pushpinOffset
            });
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
        $("[data-tooltip][data-tooltip!='']").materialtooltip({
            html: true
        });

        /* Tabs */
        $('ul.tabs').tabs();

        /* Carousels */
        $('.carousel.carousel-slider').carousel({
            fullWidth: true,
            indicators: true
        });
        $('.carousel:not(.carousel-slider)').carousel({
            indicators: true
        });

        // Bottom sheets init
        $(".modal.bottom-sheet").modal();

        materialAPEX.debug.timeEnd("materialAPEX.materialize.init");
    }
};

$(function() {
    materialAPEX.materialize.init();
});
