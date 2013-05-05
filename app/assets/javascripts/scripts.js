/* Author:

*/
$(document).ready(function() {
	$("#personalNav > li").hover(function() {
		var tipContainer = $(this).find("div.tip");
		var tip = $("<canvas>");
		var context = tip.get(0).getContext('2d');
		context.fillStyle   = tipContainer.parent().css('background-color');
		context.strokeStyle = '#b5b5b5';
//		context.strokeStyle = tipContainer.parent().css('border-color');
		context.lineWidth   = 1;
		context.translate(2,1);
		context.beginPath();
		context.moveTo(0,8);
		context.lineTo(8,0);
		context.lineTo(16,8);
		context.stroke();
		context.fill();
		context.closePath();
		if(tipContainer.children('canvas').length == 0) {
			tipContainer.append(tip);
		}
		$(this).children('div.dropdown').show();
	}, function() {
		$(this).children('div.dropdown').hide();
	});
	$.waypoints.settings.scrollThrottle = 30;
	$('body.posts div.main.id').waypoint(function(event, direction) {
		$(this).toggleClass('nonsticky', !(direction === "down"));
		$(this).css('padding-top', $(this).children('header').height());
		event.stopPropagation();
	});
	$("body").mousemove(function() {
//		$(".hoverbubble").remove();
	});
/*		$("header small span.author").qtip(
		{
			content: {
				// Set the text to an image HTML string with the correct src URL to the loading image you want to use
				text: '<img class="throbber" src="/projects/qtip/images/throbber.gif" alt="Loading..." />',
				ajax: {
					url: './ajax/tooltip.html' // Use the rel attribute of each element for the url to load
				}
			},
			position: {
				at: 'bottom center', // Position the tooltip above the link
				my: 'top center',
				viewport: $(window), // Keep the tooltip on-screen at all times
				effect: false // Disable positioning animation
			},
			show: {
				solo: true // Only show one tooltip at a time
			},
			hide: 'unfocus',
			style: { width: 335, tip: { width: 16, height: 8 } }
		});
		if($("header figure div.tip")) {
			var tipContainer = $("header figure div.tip");
			var tip = $("<canvas>");
			var context = tip.get(0).getContext('2d');
			context.fillStyle   = tipContainer.parent().css('background-color');
			context.translate(2,1);
			context.beginPath();
			context.moveTo(8,0);
			context.lineTo(0,8);
			context.lineTo(8,16);
			context.fill();
			context.closePath();
			tipContainer.append(tip);
		}*/
		if($('.pagination').length) {
			$(window).scroll(function() {
				url = $('.pagination .next_page').attr('href');
				if(url && $(window).scrollTop() > $(document).height() - $(window).height() - 50) {
					$('.pagination').text("Fetching more products...");
					$.getScript(url);
				}
			});
	    	$(window).scroll()
	    }
});




