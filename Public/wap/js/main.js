$(function () {
    $(".indexFooterFixed>a").click(function () {
        $(".indexFooterFixed>a").removeClass("indexFooterFixedAction");
        $(this).addClass("indexFooterFixedAction");
    })

    $(".mm-listview a").click(function () {
        $(".mm-listview a").removeClass("mm-listviewActive");
        $(this).addClass("mm-listviewActive")
    })

    $(".indexFooterFixed a").click(function () {
        $(".indexFooterFixed a").removeClass("indexFooterFixedAction");
        $(this).addClass("indexFooterFixedAction")
    })

})
