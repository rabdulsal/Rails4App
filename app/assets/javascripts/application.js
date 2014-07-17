// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery-readyselector
//= require_tree .

$(function(){
	$('#nav').affix({
	      offset: {
	        top: $('.homepage').height()
	      }
	});

	// Parallax Scrolling

	/*$(window).scroll(function(e){
	    parallax();
	    fade_to_black();
	});

	function parallax(){
	    var scrolled = $(window).scrollTop();
	    $('.background').css('bottom',-(scrolled*0.389)+'px');
	}

	$(window).bind('scroll', function(){
	    var offset = $(document).scrollTop()
	        ,opacity=0
	    ;
	    var fadeStart=200 // 100px scroll or less will equiv to 1 opacity
		    ,fadeUntil=600 // 200px scroll or more will equiv to 0 opacity
		    ,fading = $('.background')
		;
	    if( offset<=fadeStart ){
	        opacity=1;
	    }else if( offset<=fadeUntil ){
	        opacity=1-offset/fadeUntil;
	    }
	    fading.css('opacity',opacity).html(opacity);
	});

	function fade_to_black(){
	    var offset = $(document).scrollTop()
	        ,opacity=0
	    ;
	    var fadeStart=400 // 100px scroll or less will equiv to 1 opacity
		    ,fadeUntil=600 // 200px scroll or more will equiv to 0 opacity
		    ,fading = $('.fade-to-black')
		;
	    if( offset<=fadeStart ){
	        opacity=1;
	    }else if( offset<=fadeUntil ){
	        opacity=1-offset/fadeUntil;
	    }
	    fading.css('opacity',opacity);
	}*/

// **************** Rock, Paper, Scissors **************
    
    
});
	