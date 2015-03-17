(function ($) {
  $(document).ready(function() {

    $(document).on('click.card', '.card', function (e) {
      if ($(this).find('.card-reveal').length) {
        if ($(e.target).is($('.card-reveal .card-title')) || $(e.target).is($('.card-reveal .card-title i'))) {
          $(this).find('.card-reveal').velocity({translateY: 0}, {duration: 225, queue: false, easing: 'easeInOutQuad'});
        }
        else if ($(e.target).is($('.card .activator')) || $(e.target).is($('.card .activator i')) || $(e.target).is($('.card .activator img')) ) {
          $(this).find('.card-reveal').velocity({translateY: '-101%'}, {duration: 300, queue: false, easing: 'easeInOutQuad'});
        }
      }


    });

  });
}( jQuery ));