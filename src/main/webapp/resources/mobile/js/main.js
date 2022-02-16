'use strict'
$(document).ready(function () {

    var body = $('body');
    var mainmenu = $('.main-menu');

    /* page load as iframe */
    if (self !== top) {
        body.addClass('iframe');
    } else {
        body.removeClass('iframe');
    }

    /* Dropdown toggle */
    //$('.dropdown-toggle').dropdown()

    /* floating input text fields */
    $('.floating-input').each(function () {
        if (!$(this).val() || $(this).val().length === 0) {
            //$(this).parent().removeClass('active')
        } else {
            $(this).parent().addClass('active')
        }
    })
    $('.floating-input').on('blur', function () {
        if (!$(this).val() || $(this).val().length === 0) {
            $(this).parent().removeClass('active')
        } else {
            $(this).parent().addClass('active')
        }

        return false;
    });





    

/**************** Date & Time Picker **********************/

$(document).ready(function () {
    // create DateTimePicker from input HTML element
    $("#fromdatetimepicker").kendoDateTimePicker({
    value: new Date(),
    dateInput: true
    });
    });
    
    
    $(document).ready(function () {
    // create DateTimePicker from input HTML element
    $("#fromdatetimepickeredit").kendoDateTimePicker({
    value: new Date(),
    dateInput: true
    });
    });



    $(document).ready(function () {
        // create DateTimePicker from input HTML element
        $("#closebydt").kendoDateTimePicker({
        value: new Date(),
        dateInput: true
        });
        });



    

    
  // :: 5.0 Hero Slides
  if ($.fn.owlCarousel) {
    var welcomeSlider = $('.hero-slides');
    welcomeSlider.owlCarousel({
        items: 1,
        loop: true,
        autoplay: true,
        dots: true,
        center: true,
        margin: 0,
        nav: true,
        navText: [('<i class="lni lni-chevron-left"></i>'), ('<i class="lni lni-chevron-right"></i>')]
    })

    welcomeSlider.on('translate.owl.carousel', function () {
        var layer = $("[data-animation]");
        layer.each(function () {
            var anim_name = $(this).data('animation');
            $(this).removeClass('animated ' + anim_name).css('opacity', '0');
        });
    });

    $("[data-delay]").each(function () {
        var anim_del = $(this).data('delay');
        $(this).css('animation-delay', anim_del);
    });

    $("[data-duration]").each(function () {
        var anim_dur = $(this).data('duration');
        $(this).css('animation-duration', anim_dur);
    });

    welcomeSlider.on('translated.owl.carousel', function () {
        var layer = welcomeSlider.find('.owl-item.active').find("[data-animation]");
        layer.each(function () {
            var anim_name = $(this).data('animation');
            $(this).addClass('animated ' + anim_name).css('opacity', '1');
        });
    });
}




    



    /* menu open close */
    $('.main-menu .btn-close').on('click', function () {
        if (body.hasClass('menu-overlay') === true) {
            body.removeClass('menu-open');
        } else {
            body.removeClass('menu-active');
            body.removeClass('menu-open');
            $('html').removeClass('menu-open');
        }

        return false;
    })

    $('.menu-btn').on('click', function () {
        if (body.hasClass('menu-overlay') === true) {
            body.addClass('menu-open');
        } else {
            body.addClass('menu-active');
            body.addClass('menu-open');
            $('html').addClass('menu-open');
        }

        return false;
    });
    $('.main-menu + .backdrop').on("click", function (e) {
        if (body.hasClass('menu-open') === true) {
            body.removeClass('menu-open');
        }

        return false;
    });



    /* menu style switch */
    $('#menu-pushcontent').on('change', function () {
        if ($(this).is(':checked') === true) {
            body.addClass('menu-push-content');
            mainmenu.css('display', 'block');
            body.removeClass('menu-overlay');
        }

        return false;
    });
    $('#menu-overlay').on('change', function () {
        if ($(this).is(':checked') === true) {
            body.removeClass('menu-push-content');
            mainmenu.css('display', 'block');
            body.addClass('menu-overlay');
        }

        return false;
    });


    /* back page navigation */
    $('.back-btn').on('click', function () {
        window.history.back();

        return false;
    });

    /* float label checking input is not empty */
    $('.float-label .form-control').on('blur', function () {
        if ($(this).val() || $(this).val().length != 0) {
            $(this).closest('.float-label').addClass('active');
        } else {
            $(this).closest('.float-label').removeClass('active');
        }

        return false;
    })
});


$(window).on('load', function () {
    setTimeout(function () {
        $('.loader-display').fadeOut('slow');
    }, 500);



    
    /* Background */
    $('.background').each(function () {
        var imgpath = $(this).find('img');
        $(this).css('background-image', 'url(' + imgpath.attr('src') + ')');
        imgpath.hide();
    })



    /* url path on menu */
    var path = window.location.href; // because the 'href' property of the DOM element is the absolute path
    $(' .main-menu ul a').each(function () {
        if (this.href === path) {
            $(' .main-menu ul a').removeClass('active');
            $(this).addClass('active');
        }
    });


});

$(window).on('scroll', function () {

    /* scroll from top and add class */
    if ($(document).scrollTop() > '10') {
        $('.header').addClass('active');
    } else {
        $('.header').removeClass('active');
    }
});


$(window).on('resize', function () {

});
