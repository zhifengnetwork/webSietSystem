$(function(){           
    var swiper = new Swiper('.index-swiper', {
        pagination: '.swiper-pagination',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        loop: true,
        autoplay : 4000,
        paginationClickable: true,
        autoplayDisableOnInteraction : false
    });
    
   var size_num;
if($(".banner-swiper1").length !=0){
  if($(window).width()<768){
    size_num=1;
  }else{
    size_num=3;
  }
}

    var swiper1 = new Swiper('.banner-swiper1', {
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        loop: true,
        //autoplay : 2000,
        paginationClickable: true,
        slidesPerView: size_num,
        autoplayDisableOnInteraction : false
    });

   

    $('#sm-img li').each(function(){
        $(this).click(function(){
            var index=$(this).index();
            $('#big-img li').hide();
            $('#sm-img li').css('border','1px solid #EAEAEA');
            $('#big-img li').eq(index).show();
            $('#sm-img li').eq(index).css('border','3px solid #4EB136');
        });
    });
    
    $('.News-content ul li').hover(function(){
        $(this).find('.title').css('color','#4EB136');
    },function(){
        $(this).find('.title').css('color','#000');
    });

    $("#contactSubmit").click(function () {
        var filterEmail = /^([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-])+.)+([a-zA-Z0-9]{2,4})+$/;
        var $name = $("#contactinput-1").val();
        var $phone = $("#contactinput-3").val();
        var $email = $("#contactinput-4").val();
       
        var $content = $("#contactinput-6").val();
        $("#contactclient").val("Name:" + $name + '<br/>' + "Phone:" + $phone + '<br/>' + "Email:" + $email + '<br/>' + "Content:" + $content);
        if ($name === "" || $name === "undefined") {
            alert("Please complete all fields before submitting the form!");
        } else if ($email === "" || $email === "undefined") {
            alert("Please complete all fields before submitting the form!");
        } else if (!filterEmail.test($email)) {
            alert("E-mail format is incorrect!");
        } else {
			 return true;
            $.ajax({
                type: "POST",
                url: "http://www.wenyangwhiteboard.com/index.php?g=Home&a=message",
                data: $("#contactform").serialize(),
                datatype: "jsonp",
                success: function (result) {
                    console.log(result);
                },
                error: function (result) {
                    alert("Submit success!");
                    
                     location.href = "thanks.html";
                     
                }
            });
        }
    })
})
