

///////////////////////////////hover effect on image/////////////////////////////////////////////////

$(function () {
	

	$('.jcarousel-skin-opencart .jcarousel-item')
		.mouseover(function() {
			$('.jcarousel-skin-opencart .jcarousel-item').css('opacity','0.4');
			$(this).css('opacity','1');
		})
		.mouseout(function() {
			$('.jcarousel-skin-opencart .jcarousel-item').css('opacity','1');
		});

	$('#language img')
		.mouseover(function() {
			$('#language img').css('opacity','0.4');
			$(this).css('opacity','1');
		})
		.mouseout(function() {
			$('#language img').css('opacity','1');
		});
	
	$('#powered a img')
		.mouseover(function() {
			$('#powered a img').css('opacity','0.4');
			$(this).css('opacity','1');
		})
		.mouseout(function() {
			$('#powered a img').css('opacity','1');
		});
	$('.boxbanner img')
		.mouseover(function() {
			$('.boxbanner img').css('opacity','0.8');
			$(this).css('opacity','1');
		})
		.mouseout(function() {
			$('.boxbanner img').css('opacity','1');
		});	
		
		
});

////////////////////////////////////////////////////////////////////////

$(document).ready(function(){
	$('.dropdown_fullwidth div:first').addClass("firstcolumn");
	
	 
	 $('a.active~ul').css('display','block');  

});

