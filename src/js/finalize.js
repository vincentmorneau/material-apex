$(document).ready(function() {
    // initialize functions
    materialAPEX.datepicker.init();
    materialAPEX.select.init();
    materialAPEX.ir.init();
    materialAPEX.observe.toolbar();
    materialAPEX.observe.select();
    Materialize.updateTextFields();

    // triggers a resize
    $(document).trigger("apexwindowresized");

    // making the page visible again
    // !important is required to overwrite what APEX already does
    $("html").attr('style', 'visibility: visible!important');

    // event handler for apexafterrefresh
    $('select').on('apexafterrefresh', function(){
        maTime("apexafterrefresh");
        materialAPEX.select.init();
        apex.debug(maTimeEnd("apexafterrefresh"));
    });

    // event handler for interactive reports
    $(".a-IRR-container").closest(".ma-region").on("apexafterrefresh", function() {
        materialAPEX.ir.init();
        materialAPEX.items.init();
        materialAPEX.select.ir();
    });

    // event handler #1 for interactive grids
    $(document).on("gridpagechange", function(event, object) {
        maTime("gridpagechange");
        materialAPEX.ig.init();
        materialAPEX.items.init();
        maTimeEnd("gridpagechange");
    });

    // event handler #2 for interactive grids
    $(document).on("apexbeginrecordedit", function(event, object) {
        maTime("apexbeginrecordedit");
        maTimeEnd("apexbeginrecordedit");
    });

    // event handler #3 for interactive grids
    $(document).on("interactivegridselectionchange", function(event, object) {
        maTime("interactivegridselectionchange");
        materialAPEX.items.init(object.recordId);
        maTimeEnd("interactivegridselectionchange");
    });

    // modal interactive grid
    $(document).on("dialogopen", function(event, object) {
        maTime("dialogopen");
        materialAPEX.select.refresh("#" + event.target.id + " select");
        materialAPEX.items.init("#" + event.target.id);
        materialAPEX.items.utr();
        maTimeEnd("dialogopen");
    });
    // modal interactive grid
    $(document).on("dialogclose", function(event, object) {
        maTime("dialogclose");
        maTimeEnd("dialogclose");
    });
});
