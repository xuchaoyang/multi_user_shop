$(function () {
	//头部导航ul的宽度
	var document_w = parseInt($(document).width());
	$(function(){
		$(window).resize(function(){
			document_w = parseInt($(document).width());
			$('.head .nav').css('width',document_w-500);
			$('.main_rg .main_content').css('width',document_w-580);
		})
	})
	$('.head .nav').css('width',document_w-500);
	//主体部分中间main_content宽度
	$('.main_rg .main_content').css('width',document_w-580);
	//获取主体中间高度
	var main_h =parseInt($('.main_rg .main_content ').css('height'));
	$('.main_lf').css('height',main_h+80);
	$('.main_rg .main_rightmost').css('height',main_h+80);
})