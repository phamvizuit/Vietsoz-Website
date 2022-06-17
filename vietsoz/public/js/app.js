$(document).ready(function () {
    //=======slider========
    var owl = $('.owl-carousel');
    owl.owlCarousel({
        items: 4,
        loop: true,
        dots: false,
        nav: true,
        margin: 10,
        autoplay: true,
        autoplayTimeout: 1500,
        autoplayHoverPause: true
    });
    $('.play').on('click', function () {
        owl.trigger('play.owl.autoplay', [1000])
    })
    $('.stop').on('click', function () {
        owl.trigger('stop.owl.autoplay')
    })
    //=======sub-menu========
    $(".sub-menu").hide();

    $(".sub-menu").parent().hover(function () {
        $(".sub-menu").slideDown();
        $("i.nav-arrow-down").css({
            "transform": "rotate(180deg)",
            "transition": "all 1s"
        });
    },
        function () {
            $(".sub-menu").slideUp();
            $("i.nav-arrow-down").css("transform", "none");
        }
    );
    //=======search========
    $("#search").hide();
    $(".show-search").click(function () {
        $("#search").fadeToggle(1000);
    });
    $("input").focus(function(){
        $("input").css("background", "#eeeeee");
      });
    $("input").blur(function(){
        $("input").css("background", "none");
      });
    //=======hover========
    $("#main-menu li").hover(function () {
        $(this).css("background", "#4db2ec");
    }, function () {
        $(this).css("background", "none");
    }
    );

    $(".post-thumb-img").hover(function () {
        $(this).css("transform", "scale(1.05)");
    },
        function () {
            $(this).css("transform", "none");
        }
    );

    $(".post-title-product").hover(function () {
        $(this).css({
            "color": "#007bff",
            "text-decoration": "none"
        });
    }, function () {
        $(this).css("color", "#212121");
    }
    );

    $(".buy-now").hover(function () {
        $(this).css({
            "color": "black",
            "text-decoration": "none",
            "background": "#ff2d2d"
        });
    }, function () {
        $(this).css("background", "#eeeeee");
    }
    );

});