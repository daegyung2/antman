$(function() {	
	$('.gnbMenu').hide();
    $( '#gnb>li').hover(
        function(){
            $(this).find('ul').stop().slideDown(300);			
        },
        function(){
            $(this).find('ul').stop().slideUp(300);
        }
    );
});