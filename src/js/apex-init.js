/**
 * APEX Initialization
 **/
$.fn.ignore = function(selector) {
    return this.clone().find(selector || ">*").remove().end();
};

/**
* @materialAPEX
**/
var materialAPEX = materialAPEX || {};

materialAPEX.items = {
    init: function () {
        /* Fix for label issue with many components. Need to have label after component. */
        // $(".input-field label").each(function() {
        //     $(this).appendTo($(this).parent());
        // });
        $(".input-field label").parent().append(function() {
            return $(this).find("label");
        });

        /* Fix for label issue with many components. Need to have label after component. */

        // $(".u-TF-item--checkbox").each(function() {
        //     $(this).after($(this).siblings("label"));
        // });
        $(".u-TF-item--checkbox").after(function(){
            return $(this).siblings("label");
        });
    }
};

materialAPEX.ir = {
    init: function () {
        if (!$('.a-IRR-table').hasClass("table-responsive")) {
            $(".a-IRR-search-field")
                .attr("placeholder", $(".a-IRR-sortWidget-searchLabel span").text())
                .parent().addClass("input-field");

            $(".a-IRR-button--actions").html('<i class="material-icons">more_vert</i>').show();
            $(".a-IRR-button--colSearch").html('<i class="material-icons">search</i>').show();

            $('.a-IRR-table').addClass("table-responsive");

            $(".a-IRR-table td").each(function(index) {
                $(this)
                    .attr("data-label",
                        $(this).closest('table')
                        .find('th')
                        .not(".a-IRR-header--group")
                        .eq($(this).index())
                        .find("a")
                        .ignore("span")
                        .text());
            });

            $(".a-IRR-header:not(.a-IRR-header--group)").closest("tr").addClass("a-IRR-header-tr");
            $(".a-IRR-header.a-IRR-header--group").closest("tr").addClass("a-IRR-header-tr--group");
        }

        $("[id*='_column_filter'], .a-IRR-dialogContent--highlight table table")
            .addClass("table-responsive")
            .find("td")
            .each(function(index) {
                $(this).attr("data-label", $(this).closest('table').find('.a-IRR-dialogTable-header').eq($(this).index()).text());
            });

        $("[id*='_chart_type'] input[type='radio'], [id*='_default_type'] input[type='radio']").each(function() {
            $(this).after("<label for='" + $(this).attr("id") + "'></label>").parent().removeAttr("nowrap");
        });
    }
};

materialAPEX.initial = {
    init: function() {
        // Grid - Handling s12 default override
        // $(".col.s12").each(function() {
        //     if ($(this).is(".s1,.s2,.s3,.s4,.s5,.s6,.s7,.s8,.s9,.s10,.s11")) {
        //         $(this).removeClass("s12");
        //     }
        // });
        $(".s1,.s2,.s3,.s4,.s5,.s6,.s7,.s8,.s9,.s10,.s11").removeClass("s12");

        // deletes empty html partsof a card
        // this is used to simplify region templates
        $('.card-action, .card-content, span.badge, i.material-icons, .ma-button-label')
            .filter(function() {
                return $.trim($(this).text()) === '' && $(this).children().length === 0;
            })
            .remove();

        /* Fixed Action Button */
        $("a.fixed-action-btn").each(function() {
            var position = "";
            var fab = $(this);
            if (fab.hasClass("fab-right")) position += "fab-right ";
            if (fab.hasClass("fab-left")) position += "fab-left ";
            if (fab.hasClass("fab-absolute")) position += "fab-absolute ";
            if (fab.hasClass("horizontal")) position += "horizontal ";
            if (fab.hasClass("click-to-toggle")) position += "click-to-toggle ";

            fab.siblings(".btn, .btn-flat").addClass("btn-floating").removeClass("btn btn-flat");
            fab.siblings(".btn-floating").addBack().wrapAll("<div class='fixed-action-btn " + position + "'>");
            fab.siblings(".btn-floating").wrapAll("<ul>").wrap("<li>");
            fab.removeClass("fixed-action-btn horizontal click-to-toggle fab-right fab-left fab-absolute");
        });

        $(".fixed-action-btn ul li a.btn-floating").each(function() {
            $(this)
                .attr("data-tooltip", $(this).find(".ma-button-label").text())
                .attr("data-position", "left");
        });

        $("div.fab-absolute").parent().addClass("fab-relative");

        // Vertical Alignment
        $(".valign-wrapper>.row").addClass("valign-wrapper");

        /* Fix for APEX  Select Template */
        $('select').closest('.input-field').removeClass('input-field');

        /* Parallax */
        $(".parallax-container").closest(".col").removeClass().closest(".row").removeClass();

        /* Display only & read only */
        $(".display_only")
            .siblings("label")
            .addClass("active display-only")
            .closest('.input-field')
            .addClass('display-only-container');

        /* Fieldset */
        $("fieldset.checkbox_group, fieldset.radio_group")
            .siblings("label")
            .addClass("active display-only")
            .closest('.input-field')
            .removeClass('input-field');

        /* Textarea */
        $("[id*='_CHAR_COUNTER']").each(function() {
            $(this).closest("div").siblings("textarea").attr("length", $(this).next().text());
        });

        $("[id*='_CHAR_COUNT']").remove();

        // $("fieldset.textarea").each(function() {
        //     $(this).prepend($(this).siblings());
        // });
        $("fieldset.textarea").prepend(function() {
            return $(this).siblings();
        });

        $('textarea').addClass('materialize-textarea');

        /* Popup LOV */
        $("fieldset.lov").parent().addClass("ma-popuplov");

        // Media
        $(".apex-materialbox img").addClass("materialboxed responsive-img").each(function() {
            $(this).attr("data-caption", $(this).parent().attr("data-caption"));
            $(this).parent().removeAttr("data-caption");
        });

        // Tooltips
        $("[data-tooltip][data-tooltip!='']").each(function() {
            $(this).siblings("i").attr("data-tooltip", $(this).attr("data-tooltip"));
        });

        // Icons
        $("i[class='']").remove();

        // Search Bar
        $(".top-nav li a i:contains('search')").parent().click(function() {
            $(".main-nav-wrapper").toggleClass("hide");
            $(".search-nav-wrapper").toggleClass("hide");
            $("#P0_SEARCH").focus();
        });

        $("#P0_SEARCH")
            .attr("type", "search")
            .blur(function() {
                $(".main-nav-wrapper").toggleClass("hide");
                $(".search-nav-wrapper").toggleClass("hide");
            });

        //  closes a toast
        $(".ma-toast-close").click(function() {
            $(this).closest(".toast").remove();
        });

        //  closes a panel
        $(".panel-close").click(function() {
            $(this).closest(".card-panel").remove();
        });

        // checkboxes and radio alternate look
        $(".ma-alternate-look input[type='checkbox']").addClass("filled-in");
        $(".ma-alternate-look input[type='radio']").addClass("with-gap");

        // this is for displaying a success message when a modal page closes
        $("body").on("apexafterclosedialog", function(e, data) {
            if (data.successMessage.text) {
                $('#toast-container').append('<div class="ma-success-message toast velocity-animating green lighten-2">' +
                    '<div class="ma-success-message-content white-text">' + data.successMessage.text + '</div>' +
                    '<i class="ma-toast-close material-icons right">close</i>' +
                    '</div>');

                // relaunch close event
                $(".ma-toast-close").click(function() {
                    $(this).closest(".toast").remove();
                });
            }
        });
    }
};

$(function() {
    materialAPEX.initial.init();

    materialAPEX.ir.init();
    materialAPEX.items.init();

    $(".a-IRR-container").parent().on("apexafterrefresh", function() {
        materialAPEX.ir.init();
        materialAPEX.items.init();
    });

    $(document).ajaxSuccess(function() {
        materialAPEX.ir.init();
        materialAPEX.items.init();
    });
});
