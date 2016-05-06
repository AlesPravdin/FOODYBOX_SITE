(function($){
	$.fn.liMenuRespEasy = function(params){
		var p = $.extend({
			type:'button' 
		}, params);
		return this.each(function(){
			menuWrap = $(this);
			if(p.type == 'button'){
				var btnNav = $('<div>').addClass('btnNav');
				var btnNavIcon = $('<span>').addClass('btnNavIcon');
				btnNavIcon.clone().appendTo(btnNav);
				btnNavIcon.clone().appendTo(btnNav);
				btnNavIcon.clone().appendTo(btnNav);
				menuWrap.before(btnNav);
				btnNav.on('click',function(){
					menuWrap.slideToggle('fast');
					return false;
				});
			}


		});
	};
})(jQuery);

