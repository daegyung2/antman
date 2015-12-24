$(function() {	
	$('.gnbMenu').hide();
    $( '#gnb>li').hover(
        function(){
            $(this).find('ul').stop().slideDown(600);			
        },
        function(){
            $(this).find('ul').stop().slideUp(600);
        }
    );
});