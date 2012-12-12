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
	$('.slider ul li:last-of-type div.bubble').removeClass('normal').addClass('reflect');
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

// bubbles
	$('span.info-icon').hover(function(){
		$('div.tuition').toggle();
	});

	$('span.checkmark, span.corner-check, span.verified').hover(function(){
		var dad = $(this).parent().parent();
		$('div.approved',dad).toggle();
	});



		// students pictures slider
	var student_pics = $('div.student-slider-pics ul li').length;
	var pointer_pic = 1;
	$('.left').hide();
	$('span.arrow.left').click(function(){
		$('div.student-slider-pics').animate({
				"left" : "+=580px"
			}, "slow");
			pointer_pic--;
			 $('.right').show();
			if (pointer_pic === 1){
				$('.left').hide();
			}
			else if (pointer_pic < student_pics){
				$('.right').show();
			}
	});
	$('span.arrow.right').click(function(){
		$('div.student-slider-pics').animate({
				"left" : "-=580px"
			}, "slow");
			pointer_pic++;
			$('.left').show();

			if (student_pics === pointer_pic){
				$('.right').hide();
			}
			else if (pointer_pic > 1){
				$('.left').show();
			}
	});

	/*
	 * MESSAGE BOX
	 ****************/
	//SHOW MESSAGE / BLUR
	$('span.msg').click(function() {
		$("div#blurry").fadeIn("slow");

		$("body").css("overflow", "hidden");


		return false;

	});

	//HIDE MESSAGE BOX / BLUR
	$("div,span").click(function() {
		if ($(this).hasClass("slider-controls")) {
			return false;
		} else if ($(this).hasClass("msg-cancel")) {
			$("div.msg-box input[type='text']").val("");
			$("div.msg-box textarea").val("");
			$("div#blurry").fadeOut("slow");
			$("body").css("overflow", "auto");

			return false;
		}
	});

	//HIDE MESSAGE BOX / BLUR
	$("span.transfer").click(function() {
		$("div.transfer-info").slideDown("slow");

	});


   /***************
    * HOW IT WORKS
    ***************/
			// how slider
	var steps = 9;
	var pointer_step = 1;

	$('.left').hide();
	$('span.arrow.left').click(function(){
			$('div#how'+pointer_step).fadeOut();
			$('div#step'+pointer_step).hide();
			$('span#ball'+pointer_step).removeClass("ball-active");
			pointer_step--;
			$('div#how'+pointer_step).delay(500).fadeIn("slow");
			$('div#step'+pointer_step).delay(500).show();
			$('span#ball'+pointer_step).addClass("ball-active");
			$('div.how div.bubble').animate({
				"left" : "-=21px"
			}, "slow");
			 $('.right').show();
			if (pointer_step === 1){
				$('.left').hide();
			}
			else if (pointer_step < steps){
				$('.right').show();
			}
	});
	$('span.arrow.right').click(function(){
			$('div#how'+pointer_step).removeClass("active").fadeOut();
			$('div#step'+pointer_step).removeClass("active").hide();
			$('span#ball'+pointer_step).removeClass("ball-active");
			pointer_step++;
			$('div#how'+pointer_step).delay(500).fadeIn("slow");
			$('div#step'+pointer_step).delay(500).show();
			$('span#ball'+pointer_step).addClass("ball-active");
			$('div.how div.bubble').animate({
				"left" : "+=21px"
			}, "slow");
			$('.left').show();

			if (steps === pointer_step){
				$('.right').hide();
			}
			else if (pointer_step > 1){
				$('.left').show();
			}
	});
	var ball_num;
	// change step when clicking balls
	$('span.ball').click(function(){
		var dist;
		$('div#how'+pointer_step).removeClass("active").fadeOut();
		$('div#step'+pointer_step).removeClass("active").hide();
		$('span#ball'+pointer_step).removeClass("ball-active");
		ball_num = $(this).attr('id').split("ball");
		dist = ( parseInt(ball_num[1]) - pointer_step )* 21 ;
		pointer_step = parseInt(ball_num[1]);
		$('div.how div.bubble').animate({
				"left" : "+=" +dist + "px"
			}, "slow");
		$('div#how'+pointer_step).delay(500).fadeIn("slow");
		$('div#step'+pointer_step).delay(500).show();
		$('span#ball'+pointer_step).addClass("ball-active");
		if (pointer_step == 9){
				$('.right').hide();
				$('.left').show();

			}
			else if (pointer_step == 1){
				$('.left').hide();
				$('.right').show();
			}
		if (pointer_step < 9 && pointer_step > 1){
			$('.left, .right').show();
		}
	});



});
