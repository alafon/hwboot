$(document).ready(function() {
    // nothing todo yet :-(...but don't worry, everything's gonna be alright.

    // automatic tabs handling
    $('.tabs').tabs();

    // Setup twipsy
	$("*[rel=twipsy]").twipsy();

    // Setup popover
    $("*[rel=popover]").popover();

	// table sort example
	// ==================
	$("#sortTableExample").tablesorter( { sortList: [[ 1, 0 ]] } )

	// add on logic
	// ============
	$('.add-on :checkbox').click(function () {
	if ($(this).attr('checked')) {
	  $(this).parents('.add-on').addClass('active')
	} else {
	  $(this).parents('.add-on').removeClass('active')
	}
	})

	// POSITION STATIC TWIPSIES
	// ========================
	$(window).bind( 'load resize', function () {
	$(".twipsies a").each(function () {
	$(this)
	.twipsy({
	live: false
	, placement: $(this).attr('title')
	, trigger: 'manual'
	, offset: 2
	})
	.twipsy('show')
	})
	})

});
