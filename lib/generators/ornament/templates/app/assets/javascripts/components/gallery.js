//= require fotorama
//= require jquery.flexslider

/*jslint browser: true, indent: 2, todo: true, unparam: true */
/*global jQuery,Ornament */

(function (document, window, $) {

  "use strict";

  $(document).on("ornament:refresh", function () {

    $(".gallery").not(".gallery-initialized").each(function () {

      $(this).fotorama();

    }).addClass("gallery-initialized");

  });

}(document, window, jQuery));
