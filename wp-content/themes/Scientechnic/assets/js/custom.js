/** Custom JavaScript */
(function ($) {
    // $('.site-loader').css({"display":"block"})

    var $el = {}, _screenWidth, _screenHeight;

    $(document).ready(domReady);
    new WOW().init();

    // $(".events-content").mCustomScrollbar({
    //     axis: "x", // vertical and horizontal scrollbar
    //     scrollButtons: {enable: true}, alwaysShowScrollbar: 1, mouseWheel: {enable: false}, scrollInertia: 100, snapAmount: 60, TouchScroll: true, advanced: {autoExpandHorizontalScroll: true},
    // });

    if( $('.timelinegal').length ) {
        var slider = $('.galtl-list').smoothDivScroll({
            manualContinuousScrolling: true,
            hotSpotScrollingStep: 5,
            autoScrollingMode: "onStart"
        });
    }

    function cacheDom() {
        $el.htmlNbody = $('body, html');
        $el.siteLoader = $('.site-loader');
        $el.header = $('header');
        $el.siteBody = $('.site-body');
        $el.footer = $('footer');
        $el.banner = $('#banner');
        $el.gotoTop = $('#gotoTop');
        $el.downScroll = $('.down-scroll');
        $el.homeSearchBox = $('.custom-search-home');
        $el.caseInfo = $('.case-info');
    }

    $("#projects-scroll").owlCarousel({

        navigation: true, // Show next and prev buttons
        slideSpeed: 300, paginationSpeed: 400, singleItem: true, navigation: false

    });
    $("#chucks-scroll").owlCarousel({
        navigation: true, // Show next and prev buttons
        slideSpeed: 300, paginationSpeed: 400, autoHeight: true, singleItem: true, navigation: false
    });


    $(".owl-reviews").owlCarousel({
        navigation: true, // Show next and prev buttons
        slideSpeed: 300, paginationSpeed: 400, singleItem: true, autoplay: true

    });

    $('.video-image-content').slick({
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 540,
                settings: {
                    slidesToShow: 2
                }
            }, {
                breakpoint: 376,
                settings: {
                    slidesToShow: 1
                }
            }
        ]
    });




    $(".project-gallery").slick({
        infinite: true, slidesToShow: 3, slidesToScroll: 3, arrows: false, dots: true, autoplay: true, autoplaySpeed: 7000,
        responsive: [
            {
                breakpoint: 540,
                settings: {
                    slidesToShow: 2
                }
            }, {
                breakpoint: 376,
                settings: {
                    slidesToShow: 1
                }
            }
        ]
    });

    // $('.fancybox-media, .certificate-full-image').fancybox({
    //     openEffect: "none", closeEffect: "none", minWidth: $(window).width(), minHeight: $(window).height(), margin: 0, padding: 0, helpers: {
    //         media: {}
    //     }
    // });

    $(".sc-container-warp .xpand-btn").click(function () {
        if ($(this).hasClass("active")) {
            $(this).removeClass("active").html("Read more").prev(".expand").slideUp("slow");
        } else {
            $(this).addClass("active").html("Read less").prev(".expand").slideDown("slow");
        }
    });

    $('.fancybox-img').fancybox({
        padding: 0, margin: 0
    });

    $(".down-scroll").click(function () {
        var target = $('#sc-wrap');
        $('html, body').animate({
            scrollTop: target.offset().top
        }, 800);
        return false;
    });
    $(".sc-empower .arrow-next").click(function () {
        var target = $('.sc-empower');
        $('html, body').animate({
            scrollTop: target.offset().top
        }, 800);
        return false;
    });
    $(".contact-nav .nav a").click(function () {
        var target = $(".contact-address-wrap");
        $('html, body').animate({
            scrollTop: target.offset().top
        }, 800);
        return false;
    });

    $('.projct-map-show span').click(function(){
        $(this).addClass('active').siblings().removeClass('active');
    });

    $('.toggle-menu').jPushMenu();

    // // twitter feed
    // $('.social-feed-container').socialfeed({
    //     twitter: {
    //         accounts: ['@Scientechnic'], limit: 12, consumer_key: 'z8nCG8hpyKdRgL4gwGLHgiOmL', consumer_secret: 'wPdLiEgx2oSh8gii3inxD06VdwKSsMo01OvenZBYaf8nRkiD6F'
    //     }, template: CCM_TOOLS_PATH + '/template.php', show_media: false, callback: function () {
    //         $('.tweet-feeds').slick({
    //             autoplay: true, autoplaySpeed: 7000, infinite: true, slidesToShow: 5, slidesToScroll: 1,
    //             responsive:
    //                 [{
    //                     breakpoint: 992, settings: {
    //                         slidesToShow: 4
    //                     }
    //                 },
    //                 {
    //                     breakpoint: 769, settings: {
    //                         slidesToShow: 3
    //                     }
    //                 },
    //                 {
    //                     breakpoint: 500, settings: {
    //                         slidesToShow: 2
    //                     }
    //                 }
    //             ]
    //         });
    //     }
    // });

    $(".mobile-menu").click(function () {
        $('.sc-toggle-menu').toggleClass('active');
        $('body').toggleClass('active');
    })
    $(".project-info .panel-heading").click(function () {
        $(this).toggleClass('active');
    })
    $(".pop-close").click(function () {
        $('.enquery-pop').removeClass('menu-open');
    })


    function domReady() {
        cacheDom();
        setEvents();

        handleSplashScreen();
        handleHomeSearchClick();

        screenResize();


        //call banner slider
        $('#slides').superslides({
            animation: 'fade', play: 7000, inherit_height_from: $('.banner-area')
        });

        $("footer h5 a").click(function () {
            if ($(document).width() < 768) {
                $(this).parent().siblings('ul.nav').slideToggle();
                return false;
            }
        });

        //open product equiry form modal on click
        $(".products-set .spacy-bot .enquire-btn,.prod-item-details .enquire-btn, .inquiry-btn > a").click(function () {            
            $("#productModal").modal('show');
            var prodTitle = $(this).data("name");
            var prodUrl = $(this).data("url");
            $("#productModal").find('.formidable .hidden.product-name-49 input').val(prodTitle);
            $("#productModal").find('.formidable .hidden.product-url-50 input').val(prodUrl);
        });
        //reload page on product enquiry modal close
        $('#productModal').on('hide.bs.modal', function () {
            //reload page only if the form has been submitted once to reset the form
            if ($("#productModal .formidable_message").length) {
                location.reload(true);
            }
        });

        //Datatables plugin
        $('#models-list').DataTable({
            "pageLength": 25
        });

        //scroll half banner on landing of product/cat page
        if($(".unit-view-page .products-set").length){
          $('html, body').animate({
            scrollTop: $(".banner-area").height()/2
          }, 400);
        }

        //set UAE as default country for all forms
        $(".formidable select.country_select option[value='AE']").attr("selected",true);

        FlashAnimate();
        //set active class on hover of pointer
        $(".case-container .case-info .pointer .dot").hover(function(){
            $(this).parent().addClass("active").siblings().removeClass("active");
            clearInterval(playFlashAnimate);
        });
        $(".case-container .case-info .pointer").mouseleave(function(){
            $(this).removeClass("active");
            FlashAnimate();
        });

        $('.projct-map-show .sc-link').click(function(e) {
            e.preventDefault();
            var projectType = $(this).data("project");
            console.log(projectType);
            $('#' + projectType).addClass("active").siblings().removeClass("active");
            $(this).parent('span').siblings().find('.sc-link').addClass("active");
            $(this).removeClass("active");
        });

        $('span.share-icon').click(function() {
            var shareObj = $('.atss.atss-right, .atss .at-share-btn .at-icon-wrapper, span.share-icon, .addthis-smartlayers ');
            if(shareObj.hasClass('active')) {
                shareObj.removeClass('active');
            } else {
                shareObj.addClass('active');
            }
        });

    }


    var owl = $("#chucks-scroll");
    $("a.next-unit").click(function () {
        owl.trigger('owl.next');
    })
    $("a.prev-unit").click(function () {
        owl.trigger('owl.prev');
    })
    var owltwo = $("#projects-scroll");
    $(".projects-scroll a.next-unit").click(function () {
        owltwo.trigger('owl.next');
    })
    $(".projects-scroll a.prev-unit").click(function () {
        owltwo.trigger('owl.prev');
    })
    function setEvents() {
        $(window)
            .load(handleWidgetsLoading)
            .resize(screenResize)
            .scroll(windowScroll);

        // handleBannerSlider();

        $el.footer.on('click', handleFooterClick);

        $el.header.find('.mobile-menu').on('click', handleMobileMenu);

        //scroll to top
        $el.gotoTop.click(function () {
            $('body,html').animate({
                scrollTop: 0
            });
        });

    }

    function handleHomeSearchClick() {
        //var $button = $el.homeSearchBox.find('.form-search');
        var $chosenSelect = $el.homeSearchBox.find('.chosen-select');
        if( $chosenSelect.length > 0 ) {
            $chosenSelect[0].selectedIndex = 0;
        }
        $chosenSelect.on('change', function (e) {
            window.location.href = $chosenSelect.val();
            return false;
        });
    }

    function handleFooterClick() {

    }

    function handleSplashScreen() {

    }

    $(".tabs-links ul li").click(function () {
        $(this).addClass('active').siblings().removeClass('active');
    })

    $("a.search-magnify").click(function () {
        $(this).toggleClass('active');
        $("body").toggleClass('no-flow');
        if ($(this).hasClass('active')) {
            $('.search-screen').fadeIn(500)
        } else {
            $('.search-screen').fadeOut(500)
        }
    });


    function screenResize() {
        _screenWidth = $(window).width();
        _screenHeight = $(window).height();

        var cw = $('.blockylarge').width();
        $('.blockylarge').css({'height': cw + 'px'});





        //home page actions
        if ($(".home-page").length) {

            //calculate home banner height
            $(".banner-area").height(_screenHeight);

            //calculate home banner ifram video dimension
            var iframe = $(".banner-area iframe");
            var videocontainerHeight = _screenHeight;
            var hdmoviewidth = _screenWidth;
            var heightswitch = (videocontainerHeight * 1.77);
            var hdmovieml = (heightswitch - _screenWidth) / -2;

            if (_screenWidth < heightswitch) {
                iframe.height(videocontainerHeight);
                iframe.width(heightswitch);
                iframe.css({'left': hdmovieml});
            } else {
                var hdmovieheight = (_screenWidth) / 1.77;
                iframe.height(hdmovieheight);
                iframe.width(hdmoviewidth);
            }
            if (iframe.height() > videocontainerHeight) {
                var vertVideoCenter = (iframe.height() - videocontainerHeight) / 2;
                iframe.css({'top': '-' + vertVideoCenter + 'px'});
            }
        }

    }

    $(window).load(function () {

        //Hide loading icon for banner
        $(".sc-preloader").fadeOut("slow");

        //add class if number of images is one
        if ($("#slides ul li").length <= 1) {
            $("#slides").addClass("single");
        } else {
            $("#slides ul li:first-child").addClass("active").siblings().removeClass("active");
        }

        if ($("#slides video").length) {
            //play video automatically without any delay if its a first child
            var firstVid = $("#slides ul li:first-child video");
            var vidObj = firstVid[0];
            if (vidObj) {
                vidObj.play();
                vidObj.addEventListener('ended', function (e) {
                    $(".slides-navigation a.next").click();
                });
            }

            //play video and move to next slide once finished.
            var video, htmlVideo;
            $('#slides').on('animated.slides', function () {
                setTimeout(function () {
                    if (video.length) {
                        $('#slides').superslides('stop');
                        htmlVideo = video[0];
                        htmlVideo.play();
                        htmlVideo.addEventListener('ended', function (e) {
                            $(".slides-navigation a.next").click();
                        });
                    }
                }, 100);
            });
        }

    });

    function windowScroll() {
        //toggle goto top button
        $el.gotoTop.toggleClass("active", $(window).scrollTop() > (_screenHeight / 2));
        $("header").toggleClass('sticky', $(window).scrollTop() > 100);
        //$('.atss .at-share-btn .at-icon-wrapper').toggleClass("active", $(window).scrollTop() > (_screenHeight / 2));
    }

    function handleMobileMenu() {
        if ($(this).hasClass("active")) {
            $(this).removeClass("active");
        } else {
            $(this).addClass("active");
        }
    }

    function handleSplashScreen() {
        /* loading screen */
        $('.logo-middle').fadeIn(500);
        $el.siteLoader.delay(1500).fadeOut(500);
    }

    function handleWidgetsLoading() {
        //Addthis icon change
        setTimeout(function () {
            $("#at4-share").removeClass("addthis_32x32_style").addClass("addthis_20x20_style");
            $(".at4-share-outer").show();
        }, 2000);
    }

    function FlashAnimate() {
        //animate flash point
        if( $el.caseInfo.length > 0 ) {
            var projPointer = $el.caseInfo.find('.pointer');
            var ctr = $el.caseInfo.find('.pointer').length;
            var i = 0;
            playFlashAnimate = setInterval(function(){
                projPointer.removeClass("flash animated active");
                projPointer.eq(i).addClass("flash animated active");
                projPointer.eq(i)
                if(i == ctr-1) {
                    i = 0;
                } else {
                    i++;
                }
            }, 7000);
        }
    }


    (function init() {
        //detect mobile platform
        if (navigator.userAgent.match(/(iPod|iPhone|iPad)/)) {
            $("body").addClass("ios-device");
        }
        if (navigator.userAgent.match(/Android/i)) {
            $("body").addClass("android-device");
        }

        //detect desktop platform
        if (navigator.appVersion.indexOf("Win") != -1) {
            $('body').addClass("win-os");
        }
        if (navigator.appVersion.indexOf("Mac") != -1) {
            $('body').addClass("mac-os");
        }

        //detect IE 10 and above 11
        if (navigator.userAgent.indexOf('MSIE') !== -1 || navigator.appVersion.indexOf('Trident/') > 0) {
            $("html").addClass("ie10");
        }

        //Specifically for IE8 (for replacing svg with png images)
        if ($("html").hasClass("ie8") || $("html").hasClass("ie10")) {
            var imgPath = "/themes/scientechnic/images/";
            $("header .logo a img,.site-loader img").attr("src", imgPath + "logo.png");
        }
        if ($("html").hasClass("ie9")) {
            $('#ie-modal').modal();
        }
    })();

})(jQuery);


function showFormErrors($form, errors) {
    if (!$form || !($form instanceof jQuery) || $form.length < 1 || !errors || errors.constructor !== Array || errors.length < 1) {
        return;
    }

    var $errors = $('<ul>').attr({'class': "ccm-error"});
    errors.forEach(function (error) {
        $errors.append($('<li>').text(error))
    });
    $form.before($errors);
}

function removeFormErrors($form) {
    if (!$form || !($form instanceof jQuery) || $form.length < 1) {
        return;
    }

    $form.prevAll('.ccm-error').remove();
}


var cw = $('.equalheight').width();
$('.equalheight').css({'height': cw + 'px'});

// Handles onChange event filter in News Page and Insights Page
$('.sel-filter-year, .sel-filter-month, .sel-filter-business, .sel-filter-location').change(function () {
    var form = $(this).closest('form');
    $(form).submit();
});

$(document).ready(function(){
$('.mailing-list-checkboxes >.mailing-list-group > label').html("I agree to receive newsletters from Scientechnic and accept the <a href='/privacy-policy'>Privacy Policy</a>.");
$('#mailingListGroup_7573_5').prop('checked', false);
$("input").prop('required',true);

$(document).ready(function () {
    $(".chosen-select").chosen();
  });

  
});
/*!
 * jPushMenu.js
 * 1.1.1
 * @author: takien
 * http://takien.com
 * Original version (pure JS) is created by Mary Lou http://tympanus.net/
 */

(function($) {
    $.fn.jPushMenu = function(customOptions) {
        var o = $.extend({}, $.fn.jPushMenu.defaultOptions, customOptions);

        $('body').addClass(o.pushBodyClass);

        // Add class to toggler
        $(this).addClass('jPushMenuBtn');

        $(this).click(function(e) {
            e.stopPropagation();

            var target     = '',
            push_direction = '';

            // Determine menu and push direction
            if ($(this).is('.' + o.showLeftClass)) {
                target         = '.cbp-spmenu-left';
                push_direction = 'toright';
            }
            else if ($(this).is('.' + o.showRightClass)) {
                target         = '.cbp-spmenu-right';
                push_direction = 'toleft';
            }
            else if ($(this).is('.' + o.showTopClass)) {
                target = '.cbp-spmenu-top';
            }
            else if ($(this).is('.' + o.showBottomClass)) {
                target = '.cbp-spmenu-bottom';
            }

            if (target == '') {
                return;
            }

            $(this).toggleClass(o.activeClass);
            $(target).toggleClass(o.menuOpenClass);

            if ($(this).is('.' + o.pushBodyClass) && push_direction != '') {
                $('body').toggleClass(o.pushBodyClass + '-' + push_direction);
            }

            // Disable all other buttons
            $('.jPushMenuBtn').not($(this)).toggleClass('disabled');

            return;
        });

        var jPushMenu = {
            close: function (o) {
                $('.jPushMenuBtn,body,.cbp-spmenu')
                    .removeClass('disabled ' + o.activeClass + ' ' + o.menuOpenClass + ' ' + o.pushBodyClass + '-toleft ' + o.pushBodyClass + '-toright');
            }
        }

        // Close menu on clicking outside menu
        if (o.closeOnClickOutside) {
             $(document).click(function() {
                jPushMenu.close(o);
             });
         }

        // Close menu on clicking menu link
        if (o.closeOnClickLink) {
            $('.cbp-spmenu a').on('click',function() {
                jPushMenu.close(o);
            });
        }
    };

   /*
    * In case you want to customize class name,
    * do not directly edit here, use function parameter when call jPushMenu.
    */
    $.fn.jPushMenu.defaultOptions = {
        pushBodyClass      : 'push-body',
        showLeftClass      : 'menu-left',
        showRightClass     : 'menu-right',
        showTopClass       : 'menu-top',
        showBottomClass    : 'menu-bottom',
        activeClass        : 'menu-active',
        menuOpenClass      : 'menu-open',
        closeOnClickLink   : true
    };
})(jQuery);

