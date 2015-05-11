function showYolobar(message, classToUse, options) {
  options.message = message;
  if (classToUse != null) options.useClass = classToUse;
  $.yolobar(options);
}


$(function ($) {
  $.removebar = function (txt) {
    if ($('.yolobar').length) {
      $('.yolobar').slideUp('slow', function () {
        $(this).remove();
      });
    }
  };

  $.yolobar = function (options) {
    var defaults = {
      position: 'top',
      removeButton: true,
      time: 5000
    };
    options = $.extend(defaults, options);

    var _message_span = $(document.createElement('span'))
      .addClass('yolobar-content').html(options.message);

    var container = $(document.createElement('div'));
    container.addClass("notification");
    container.css({"cursor": "pointer"});
    container.click($.removebar);

    if ((options.position == 'bottom')) {
      container.addClass('yolobar yolobar-bottom')
    } else {
      container.addClass('yolobar yolobar-top');
    }

    if (options.useClass != undefined) {
      container.addClass(options.useClass);
    }



    if (options.removeButton) {
      var removeButton = $(document.createElement('a')).addClass('yolobar-cross');
      removeButton.click($.removebar());
      container.append(removeButton)
    }

    container.css({"display": "block"});
    $('body').append(container);
    container.append(_message_span);

    var timer = setTimeout($.removebar, options.time)
  };


});