'use strict';

"use strict";
(function($, window, document, undefined) {

  $(function () {
    
      // dynamic replicate field
    $('.add-item').on('click', function (e) {
      e.preventDefault();
      var proposal =  '<div class="replicate-inner clearfix">' +
                '<div class="proposal-left">' +
                  '<input type="text" class="form-control description" placeholder="Enter your description">' +
                '</div>' +
                '<div class="proposal-right">' +
                  '<input type="number" class="form-control amount additional" value="" placeholder="$ 100">' +
                  '<button class="close bidding-close">×</button>' +
                '</div>'
              '</div>';
      $('.replicate').append(proposal);
    });

    // calculate dynamic value
    var total;
    $('body').on('input', '.amount', function () {
      total = 0;
      $('.amount').each(function () {
        var amountValue = parseFloat($(this).val());
        if ($.isNumeric(amountValue)) {
          total += amountValue;
        }
        if (! $(this).val()) {
                $(this).addClass('error');
            } else {
                $(this).removeClass('error');
            }
      });
      $('.total').val(total);
      $('.earn').val(total * .9);
    });

    $('body').on('input', '.description', function () {
      $('input.description').each(function () {
            if (! $(this).val()) {
                $(this).addClass('error');
            } else {
                $(this).removeClass('error');
            }
        });
    });

        // add milestone
        $('.add-milestone').on('click', function (e) {
      e.preventDefault();
      var milestone = '<div class="request-milestone">' +
                '<div class="request-title">' +
                  '<h4 class="title">Request Milestone</h4>' +
                  '<a class="close-milestone pull-right" href="#"><i class="fas fa-times"></i></a>' +
                '</div>' +
                '<form>' +
                  '<div class="input-fields">' +
                    '<div class="input-group">' +
                      '<input type="number" class="form-control" placeholder="USD">' +
                    '</div>' +
                    '<input type="text" class="form-control" placeholder="Enter your description here">' +
                  '</div>' +
                  '<div class="form-buttons">' +
                    '<a href="#" class="button-ymp">Request Milestone</a>' +
                    '<a href="#" class="button-ymp cancel">Cancel</a>' +
                  '</div>' +
                '</form>' +
              '</div>';
      if ($('.milestone-wrapper').children().length > 1) {
        $('.request-milestone').append('');
      } else {
        $('.milestone-wrapper').append(milestone);
      }
    });

    $('body').on('click', '.cancel', function (e) {
      e.preventDefault();
      $(this).parent().parent().parent().remove();
    });

    $('body').on('click', '.close-milestone', function (e) {
      e.preventDefault();
      $(this).parent().parent().remove();
    });

  });

})(jQuery);

