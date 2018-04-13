// JavaScript Document
$("document").ready(function(e) {
    $(".menu-left .sign").click(
		function(){
			if($(this).next(".sub-menu").css("display") == 'none')
			{
				$(".menu-left .sub-menu").slideUp();
				$(".sign").html('+');
				
				$(this).next(".sub-menu").slideDown();
				$(this).html('-');
			}
			else
			{
				$(".menu-left .sub-menu").slideUp();
				$(".sign").html('+');
			}
		}
	);
});
