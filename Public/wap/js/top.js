$(function(){
	   $(window).scroll(function(){
    
        var scrolltop = document.documentElement.scrollTop||document.body.scrollTop;
           //回到顶部出现
           if(scrolltop>=$(window).height()){
            $('.indexTopCLick').css('display','block')
           }else{
            $('.indexTopCLick').css('display','none')
           }
    })


           $('.indexTopCLick').click(function(){
            if(!$('body,html').is(":animated")){
            $('body,html').animate({'scrollTop':'0px'},800)
            }
        })

})