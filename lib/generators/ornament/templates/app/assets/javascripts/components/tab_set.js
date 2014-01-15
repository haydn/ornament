/*jslint browser: true, indent: 2, todo: true, unparam: true */
/*global jQuery,Ornament */

(function (document, window, O, $) {

  "use strict";

  $(document).on("ornament:refresh", function () {

    $(".tab-set").not(".tab-set-initialized").each(function () {

      var $tabSet, $tabs, $panes;

      $tabSet = $(this);
      $tabs = $tabSet.find(".tab-set--tabs > *");
      $panes = $tabSet.find(".tab-set--panes > *");

      $tabs.on("click", function (event) {

        var $tab, index, $pane;

        $tab = $(this);
        index = $tab.index();
        $pane = $panes.eq(index);

        $panes.addClass("tab-set--pane-inactive");
        $pane.removeClass("tab-set--pane-inactive");

        $tabs.removeClass("tab-set--tab-active");
        $tab.addClass("tab-set--tab-active");

        event.preventDefault();

      }).first().trigger("click");

    }).addClass("tab-set-initialized");

  });

}(document, window, Ornament, jQuery));
