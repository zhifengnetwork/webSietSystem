//首页
$(function () {

    $(".productList").addClass("wow zoomIn")
    //$(".productList").addClass("")
    $(".contactUsBac").addClass("wow zoomIn")

    $(".productDetailsSlideConter").addClass("wow zoomIn")
    $(".aboutUsText p").addClass("wow zoomIn")

    $(".indexFiveImg>div").hover(function () {
        $(this).find("img").css("transform","scale(1.1)")

    }, function () {
        $(this).find("img").css("transform","scale(1.0)")
    })


    $(".indexListUlA>li>a").click(function () {
        $(".indexListUlA i").removeClass("indexListUlATopColor");
        $(this).siblings("i").addClass("indexListUlATopColor");
    })


    $(".productTwoClick>ul>li>a").click(function () {
        $(".productTwoClick>ul>li").removeClass("proactive");
        $(this).parent().addClass("proactive")
    })

    $(".pagingClick>ul>li>a").click(function () {
        $(".pagingClick>ul>li>a").css("background","#224f6d");
        $(this).css("background","#43a42d");
    })

//判断页面高度大于多少时返回顶部按钮显示出来
    $(window).scroll(function() {
        /* 判断滚动条 距离页面顶部的距离 100可以自定义*/
        if($(window).scrollTop() > 100) {
            $(".indexTopCLick").fadeIn();
        } else {
            $(".indexTopCLick").fadeOut();
        }
    });

    $(".indexTopCLick").click(function() {
        $("html,body").animate({scrollTop:0}, 500);
    });
})