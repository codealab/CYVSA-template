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
//= require jquery-migrate-min
//= require jquery_ujs
//= require bootstrap-wysihtml5
//= require bootstrap
//= require turbolinks
//= require_tree .

/*
 * Template Name: Unify - Responsive Bootstrap Template
 * Description: Business, Corporate, Portfolio and Blog Theme.
 * Version: 1.4
 * Author: @htmlstream
 * Website: http://htmlstream.com
 */


var App = function() {

    // function handleIEFixes() {
    //     //fix html5 placeholder attribute for ie7 & ie8
    //     if (jQuery.browser.msie && jQuery.browser.version.substr(0, 1) < 9) { // ie7&ie8
    //         jQuery('input[placeholder], textarea[placeholder]').each(function () {
    //             var input = jQuery(this);

    //             jQuery(input).val(input.attr('placeholder'));

    //             jQuery(input).focus(function () {
    //                 if (input.val() == input.attr('placeholder')) {
    //                     input.val('');
    //                 }
    //             });

    //             jQuery(input).blur(function () {
    //                 if (input.val() == '' || input.val() == input.attr('placeholder')) {
    //                     input.val(input.attr('placeholder'));
    //                 }
    //             });
    //         });
    //     }
    // }

    function handleBootstrap() {
        /*Bootstrap Carousel*/
        jQuery('.carousel').carousel({
            interval: 15000,
            pause: 'hover'
        });

        /*Tooltips*/
        jQuery('.tooltips').tooltip();
        jQuery('.tooltips-show').tooltip('show');
        jQuery('.tooltips-hide').tooltip('hide');
        jQuery('.tooltips-toggle').tooltip('toggle');
        jQuery('.tooltips-destroy').tooltip('destroy');

        /*Popovers*/
        jQuery('.popovers').popover();
        jQuery('.popovers-show').popover('show');
        jQuery('.popovers-hide').popover('hide');
        jQuery('.popovers-toggle').popover('toggle');
        jQuery('.popovers-destroy').popover('destroy');
    }

    function handleSearch() {
        jQuery('.search').click(function() {
            if (jQuery('.search-btn').hasClass('fa-search')) {
                jQuery('.search-open').fadeIn(500);
                jQuery('.search-btn').removeClass('fa-search');
                jQuery('.search-btn').addClass('fa-times');
            } else {
                jQuery('.search-open').fadeOut(500);
                jQuery('.search-btn').addClass('fa-search');
                jQuery('.search-btn').removeClass('fa-times');
            }
        });
    }

    function handleToggle() {
        jQuery('.list-toggle').on('click', function() {
            jQuery(this).toggleClass('active');
        });

        /*
        jQuery('#serviceList').on('shown.bs.collapse'), function() {
            jQuery(".servicedrop").addClass('glyphicon-chevron-up').removeClass('glyphicon-chevron-down');
        }

        jQuery('#serviceList').on('hidden.bs.collapse'), function() {
            jQuery(".servicedrop").addClass('glyphicon-chevron-down').removeClass('glyphicon-chevron-up');
        }
        */
    }

    function handleSwitcher() {
        var panel = jQuery('.style-switcher');

        jQuery('.style-switcher-btn').click(function() {
            jQuery('.style-switcher').show();
        });

        jQuery('.theme-close').click(function() {
            jQuery('.style-switcher').hide();
        });

        jQuery('li', panel).click(function() {
            var color = jQuery(this).attr("data-style");
            var data_header = jQuery(this).attr("data-header");
            setColor(color, data_header);
            jQuery('.list-unstyled li', panel).removeClass("theme-active");
            jQuery(this).addClass("theme-active");
        });

        var setColor = function(color, data_header) {
            jQuery('#style_color').attr("href", "/assets/themes/" + color + ".css");
            if (data_header == 'light') {
                jQuery('#style_color-header-1').attr("href", "/assets/header1-" + color + ".css");
                jQuery('#logo-header').attr("src", "/assets/logo1-" + color + ".png");
                jQuery('#logo-footer').attr("src", "/assets/logo2-" + color + ".png");
            } else if (data_header == 'dark') {
                jQuery('#style_color-header-2').attr("href", "/assets/header2-" + color + ".css");
                jQuery('#logo-header').attr("src", "/assets/logo1-" + color + ".png");
                jQuery('#logo-footer').attr("src", "/assets/logo2-" + color + ".png");
            }
        }
    }

    function handleBoxed() {
        jQuery('.boxed-layout-btn').click(function() {
            jQuery(this).addClass("active-switcher-btn");
            jQuery(".wide-layout-btn").removeClass("active-switcher-btn");
            jQuery("body").addClass("boxed-layout container");
        });
        jQuery('.wide-layout-btn').click(function() {
            jQuery(this).addClass("active-switcher-btn");
            jQuery(".boxed-layout-btn").removeClass("active-switcher-btn");
            jQuery("body").removeClass("boxed-layout container");
        });
    }

    function handleHeader() {
        jQuery(window).scroll(function() {
            if (jQuery(window).scrollTop() > 100) {
                jQuery("#menu_estatico").addClass("header-fixed-shrink");
            } else {
                jQuery("#menu_estatico").removeClass("header-fixed-shrink");
            }
        });
    }

    return {
        init: function() {
            handleBootstrap();
            //handleIEFixes();
            handleSearch();
            handleToggle();
            handleSwitcher();
            handleBoxed();
            handleHeader();


            $('.wysihtml5').wysihtml5();

           

        },
     

        initSliders: function() {
            jQuery('#clients-flexslider').flexslider({
                animation: "slide",
                easing: "swing",
                animationLoop: true,
                itemWidth: 1,
                itemMargin: 1,
                minItems: 2,
                maxItems: 9,
                controlNav: false,
                directionNav: false,
                move: 2
            });

            jQuery('#clients-flexslider1').flexslider({
                animation: "slide",
                easing: "swing",
                animationLoop: true,
                itemWidth: 1,
                itemMargin: 1,
                minItems: 2,
                maxItems: 5,
                controlNav: false,
                directionNav: false,
                move: 2
            });

            jQuery('#photo-flexslider').flexslider({
                animation: "slide",
                controlNav: false,
                animationLoop: false,
                itemWidth: 80,
                itemMargin: 0
            });

            jQuery('#testimonal_carousel').collapse({
                toggle: false
            });
        },

        initFancybox: function() {
            jQuery(".fancybox-button").fancybox({
                groupAttr: 'data-rel',
                prevEffect: 'none',
                nextEffect: 'none',
                closeBtn: true,
                helpers: {
                    title: {
                        type: 'inside'
                    }
                }
            });

            jQuery(".iframe").fancybox({
                maxWidth: 800,
                maxHeight: 600,
                fitToView: false,
                width: '70%',
                height: '70%',
                autoSize: false,
                closeClick: false,
                openEffect: 'none',
                closeEffect: 'none'
            });
        },

        initBxSlider: function() {
            jQuery('.bxslider').bxSlider({
                maxSlides: 4,
                minSlides: 4,
                slideWidth: 360,
                slideMargin: 10,
            });

            jQuery('.bxslider1').bxSlider({
                minSlides: 3,
                maxSlides: 3,
                slideWidth: 360,
                slideMargin: 10
            });

            jQuery('.bxslider2').bxSlider({
                minSlides: 2,
                maxSlides: 2,
                slideWidth: 360,
                slideMargin: 10
            });
        },

        initCounter: function() {
            jQuery('.counter').counterUp({
                delay: 10,
                time: 1000
            });
        },

        initParallaxBg: function() {
            jQuery('.parallaxBg').parallax("50%", 0.2);
            jQuery('.parallaxBg1').parallax("50%", 0.4);
        },

    };


}();
(function($) {

    $.extend(true, jQuery.fn, {
        imagePreview: function(options) {
            var defaults = {};
            if (options) {
                $.extend(true, defaults, options);
            }
            $.each(this, function() {
                var $this = $(this);
                /* console.log("metodo");*/
                $this.bind('change', function(evt) {
                    var image = $(this).data('image');
                    /*alert(image);*/
                    var files = evt.target.files; // FileList object
                    $('#' + image).attr('src', '');


                    // Loop through the FileList and render image files as thumbnails.
                    for (var i = 0, f; f = files[i]; i++) {
                        // Only process image files.
                        if (!f.type.match('image.*')) {
                            continue;
                        }
                        var reader = new FileReader();
                        // Closure to capture the file information.
                        reader.onload = (function(theFile) {
                            return function(e) {
                                // Render thumbnail.
                                $('#' + image).attr('src', e.target.result);
                            };
                        })(f);
                        // Read in the image file as a data URL.
                        reader.readAsDataURL(f);
                    }

                });
            });
        }
    });

})(jQuery);

$(document).ready(function($) {
    $(".input_pluguin").imagePreview();

    $(document).on('page:load', function() {
        window['rangy'].initialized = false
    });


   

});
