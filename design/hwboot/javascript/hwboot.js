/**
 * HWBoot
 *
 * @category    design
 * @package     hwboot
 * @copyright   Copyright (c) 2012 Holzweg e-commerce solutions (http://www.holzweg.com)
 * @license     http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 */

$(document).ready(function() {

    // Set up le popover
	$("[rel=popover]").popover();
	
	// Set up le carousel
	$(".carousel").carousel();

	// Set up les alerts
	$(".alert").alert();

    // fix sub nav on scroll (taken from Twitter Bootstrap website application.js file)
    var $win = $(window)
      , $nav = $('.subnav')
      , navTop = $('.subnav').length && $('.subnav').offset().top - 40
      , isFixed = 0

    processScroll()

    $win.on('scroll', processScroll)

    function processScroll() {
      var i, scrollTop = $win.scrollTop()
      if (scrollTop >= navTop && !isFixed) {
        isFixed = 1
        $nav.addClass('subnav-fixed')
      } else if (scrollTop <= navTop && isFixed) {
        isFixed = 0
        $nav.removeClass('subnav-fixed')
      }
    }

    // automatic tabs handling
    // $('.tabs').tabs();

	// table sort example
	// ==================
	// $("#sortTableExample").tablesorter( { sortList: [[ 1, 0 ]] } )

	// add on logic
	// ============
	// $('.add-on :checkbox').click(function () {
	// if ($(this).attr('checked')) {
	  // $(this).parents('.add-on').addClass('active')
	// } else {
	  // $(this).parents('.add-on').removeClass('active')
	// }
	// })

});
