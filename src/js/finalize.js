$(document).ready(function() {
    // initialize functions
    materialAPEX.datepicker.init();
    materialAPEX.select.init();
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
        console.time("apexafterrefresh");
        materialAPEX.select.init();
        console.timeEnd("apexafterrefresh");
    });

    // event handler for interactive reports
    $(".a-IRR-container").closest(".ma-region").on("apexafterrefresh", function() {
        // materialAPEX.ir.init();
        // materialAPEX.items.init();
    });

    // event handler #1 for interactive grids
    $(document).on("gridpagechange", function(event, object) {
        console.time("gridpagechange");
        materialAPEX.ig.init();
        materialAPEX.items.init();
        console.timeEnd("gridpagechange");
    });

    // event handler #2 for interactive grids
    $(document).on("apexbeginrecordedit", function(event, object) {
        console.time("apexbeginrecordedit");
        console.timeEnd("apexbeginrecordedit");
    });

    // event handler #3 for interactive grids
    $(document).on("interactivegridselectionchange", function(event, object) {
        console.time("interactivegridselectionchange");
        materialAPEX.items.ig(object.recordId);
        console.timeEnd("interactivegridselectionchange");
    });

    // modal interactive grid
    $(document).on("dialogopen", function(event, object) {
        console.time("dialogopen");
        materialAPEX.select.refresh("#" + event.target.id + " select");
        materialAPEX.items.utr();
        console.timeEnd("dialogopen");
    });
    // modal interactive grid
    $(document).on("dialogclose", function(event, object) {
        console.time("dialogclose");
        console.timeEnd("dialogclose");
    });
});
