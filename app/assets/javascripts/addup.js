$(document).ready(function() {
	// FAQ arrows
	$('li.faq div.faq-question a').click(function() {
		var grandpa = $(this).parent().parent();
		$('div.faq-answer',grandpa).slideToggle('slow');
		$('span.icon-expand',grandpa).toggleClass('arrow-hidden').toggleClass('arrow-shown');
	});
	
	// recommended students slider
	var studentgroups = $('.slider ul').length;
	var pointer = 1; 
	$('.left').hide();
	$('span.arrow.left').click(function(){
		$('div.slider').animate({
				"left" : "+=900px"
			}, "slow");
			pointer--;
			 
			 $('.right').show();
			if (pointer === 1){
				$('.left').hide();
			}
			else if (pointer < studentgroups){
				$('.right').show();
			}
	});
	$('span.arrow.right').click(function(){
		$('div.slider').animate({
				"left" : "-=900px"
			}, "slow");
			pointer++;
			$('.left').show();
			
			if (studentgroups === pointer){
				$('.right').hide();
			}
			else if (pointer > 1){
				$('.left').show();
			}
	});
	
	// notify-early input questions
	
	$('.prospects .button').click(function(){
		var slider = $(this).parent().parent();
		$(slider).animate({
				"top" : "-=160px"
			}, "slow");
			 
			  
	});
 
	
	// mosaico flip
	var card = [1,2,3,4,5,6,7,8,9,10,11,12];
	var back = ['gray','yellow','blue','black','red'];
	$(function() {
	  setInterval(function() {
	    var thisCard = "#card"+ card[Math.floor(Math.random() * card.length)];
	    var nextCard = "#card"+ card[Math.floor(Math.random() * card.length)];
	    
	   
	     $(thisCard).css({"-webkit-transform":"rotateY(180deg)","-moz-transform":"rotateY(180deg)","-o-transform":"rotateY(180deg)","transform":"rotateY(180deg)"});
	      $(nextCard).css({"-webkit-transform":"rotateY(0deg)","-moz-transform":"rotateY(0deg)","-o-transform":"rotateY(0deg)","transform":"rotateY(0deg)"});
	    
	  },2000);
	});

//tuition bubble
	$('span.info-icon').hover(function(){
		$('div.tuition').toggle();
	});
	$('span.checkmark, span.corner-check, span.verified').hover(function(){
		var dad = $(this).parent().parent();
		$('div.approved',dad).toggle();
	});


}); 