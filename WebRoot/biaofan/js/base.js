// JavaScript Document

jQuery(document).ready(function($){
	$('#slider').flexslider({
		selector: ".slides > li",
		animation: "fade",
		controlNav: false,
		directionNav: false,
		multipleKeyboard:true,
		animationLoop: true,
		slideshow: true,
		slideshowSpeed: 6000,
		easing:"swing",
		smoothHeight: false,
		pauseOnAction:false, //操作幻灯片时是否暂停自动播放
		pauseOnHover:false, //鼠标悬停时是否暂停自动播放
			
		});
		
		
	
	
	
	//jQuery.easing callbak
		$(function() {
			$('a.company-nav,a.go-top').bind('click',function(event){
				var $anchor = $(this);
				 $('html, body').stop().animate({
				 scrollTop: $($anchor.attr('href')).offset().top
				}, 1000,'easeInOutExpo');
				event.preventDefault();
			 });
		 });
	
	// Page Scroll
	var sections = $('section')
		nav = $('nav[role="navigation"]');
	// Mobile Navigation
	$('.nav-toggle').on('click', function() {
		$(this).toggleClass('close-nav');
		nav.toggleClass('open');
		return false;
	});	
	nav.find('a').on('click', function() {
		$('.nav-toggle').toggleClass('close-nav');
		nav.toggleClass('open');
	});
	
	
	"use strict";
    $(document).ready(function() {
        var brooklyn_scroll_offset = $("#header-section").outerHeight();
        window.matchMedia || (window.matchMedia = function() {
            var c = window.styleMedia || window.media;
            if (!c) {
                var a = document.createElement("style"),
                    d = document.getElementsByTagName("script")[0],
                    e = null;
                a.type = "text/css";
                a.id = "matchmediajs-test";
                d.parentNode.insertBefore(a, d);
                e = "getComputedStyle" in window && window.getComputedStyle(a, null) || a.currentStyle;
                c = {
                    matchMedium: function(b) {
                        b = "@media " + b + "{ #matchmediajs-test { width: 1px; } }";
                        a.styleSheet ? a.styleSheet.cssText = b : a.textContent = b;
                        return "1px" === e.width
                    }
                }
            }
            return function(a) {
                return {
                    matches: c.matchMedium(a || "all"),
                    media: a || "all"
                }
            }
        }());
        var ut_modern_media_query = window.matchMedia("screen and (-webkit-min-device-pixel-ratio:2)");
        $(window).load(function() {
            function show_slogan() {
                $(".hero-holder").animate({
                    opacity: 1
                });
            }
            var execute_slogan = setTimeout(show_slogan, 800);
        });
        var $header = $("#header-section"),
            $logo = $(".site-logo img"),
            logo = $logo.attr("src"),
            logoalt = $logo.data("altlogo"),
            is_open = false,
            has_passed = false;
        var ut_nav_skin_changer = function(direction, animClassDown, animClassUp) {
            if (direction === "down" && animClassDown) {
                $header.attr("class", "ha-header ut-header-light centered " + animClassDown);
                $logo.attr("src", logoalt);
            } else if (direction === "up" && animClassUp) {
                $header.attr("class", "ha-header ut-header-light centered " + animClassUp);
                $logo.attr("src", logo);
            }
        };
        $(".ha-waypoint").each(function(i) {
            var $this = $(this),
                animClassDown = $this.data("animateDown"),
                animClassUp = $this.data("animateUp");
            $this.waypoint(function(direction) {
                ut_nav_skin_changer(direction, animClassDown, animClassUp);
            }, {
                offset: brooklyn_scroll_offset + 1
            });
        });
        $(".hero.parallax-section").addClass("fixed");
        $("section").each(function() {
            var outerHeight = $(this).outerHeight(),
                offset = "90%",
                effect = $(this).data("effect");
            if (outerHeight > $(window).height() / 2) {
                offset = "70%";
            }
            $(this).waypoint(function(direction) {
                var $this = $(this);
                if (direction === "down" && !$(this).hasClass(effect)) {
                    $this.find(".section-content").animate({
                        opacity: 1
                    }, 1600);
                    $this.find(".section-header-holder").animate({
                        opacity: 1
                    }, 1600);
                }
            }, {
                offset: offset
            });
        });
		});
	
	
	
	
	
	
	//go-top show/hide
	hidegotop();
	
	
	
});



//go-top show/hide
	function hidegotop() {
		$(window).scroll(function() {
			if ($(this).scrollTop() > 400) {
				$("a.go-top").fadeIn("1000");
			} else {
				$("a.go-top").fadeOut("1000");
			}
		});
	};
	
	
	//2s hide
	function hide2s(){
		setTimeout(function () { 
			$('#error-tip').hide();
		}, 2000);
	}