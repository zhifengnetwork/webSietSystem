$(function(){

     $(".show-btn").click(function(){
        $(this).css('display','none');
        $('.show-form').css({'display':'block','opacity':'1'});
    });
    $('.X').click(function(){
        $(".show-btn").css('display','block');
        $('.show-form').css({'display':'none','opacity':'0'});
    });

	if(document.cookie.indexOf("fir=") == -1){
		document.cookie = "fir=yes";
	}

	if (document.cookie.indexOf("ir=yes") != -1){
		$("#shade").bind("click mousewheel touchmove",function(e){
			e.stopPropagation();
			e.preventDefault();
		});
		$('#down_btn').click(function(){
			$("#shade").fadeOut(800);
		});
		var _move =10;
		$('#down_btn').animate({bottom:"15%"},1300);
		setInterval(function(){
			if(_move==15){
				$('#down_btn').animate({bottom:"15%"},1300);
				_move = 10;
			}else {
				$('#down_btn').animate({bottom:"10%"},1300);
				_move = 15;
			}
		},1300);

		document.cookie = "fir=no";
	} else {
		$("#shade").css("display","none");
	}

    var banner_pics = [];

    $('.banner-swiper .p-pics').each(function(){
        banner_pics.push($(this).attr('data-img'));
        console.log(banner_pics);
    })
	var mySwiper = new Swiper ('.banner-swiper', {
        loop: true,
        autoplay : 4500,
        pagination: '.banner-pagination',
        centeredSlides : true,
        paginationBulletRender: function (index, className) {
            return '<i class=' + className + '><img src=' + banner_pics[index]  + '></i>';
        },
        paginationClickable: true
    });




    /*var mySwiper2 = new Swiper('.s-banner',{
        autoplay: 8000,
        loop: true,
        prevButton:'.swiper-prev',
        nextButton:'.swiper-next',
        pagination : '.crtl_box',
        paginationClickable :true,
        centeredSlides : true,
        paginationBulletRender: function (index, className) {
            return '<li class="' + className + '"><img src="./src/img/ctr' + index  + '.jpg"/></li>';
        }
    });*/

       $('#action').click(function(){
        $('.modal-body').html('');
        var result = 0;

        var input_ = $.trim($('input[name=search_msg]').val()).toLocaleLowerCase();
		console.log(input_);
        var name_ = $('#p_name').text().split('_-');
        console.log(name_);
        var url_ = $('#p_url').text().split('_-');
        for(var i=0;i<name_.length;i++){
            console.log(name_.length);
            console.log(name_[i]);
            name_[i] = name_[i].trim().toLocaleLowerCase();
            if(input_ == '' || undefined ){
                $('.modal-body').text('Please input product');
                return
            } else if(name_[i].search(input_) != -1){
                var div_ = document.createElement('div');
                var a_ = document.createElement('a');
                    a_.setAttribute('href',url_[i]);
                    a_.appendChild(document.createTextNode(name_[i]));
                div_.appendChild(a_);
                var target_ = document.getElementsByClassName('modal-body')[0];
                target_.appendChild(div_);
                result = 1;
            }
        }

        if(result === 0){
            $('.modal-body').text('Sorry there is no result');
        }
    });

    //侧栏三级页面

    $(".li-outer").each(function(index, element) {
        if($(this).find(".ul-inner").length > 0){
        	console.log("have");
            var lv2 = $(this).find(".ul-inner");
            actionShowObj($(this),lv2,"mouseover","mouseout","top", 200);
        }
    });

    function actionShowObj(_actionObj,_showObj,_showActionType,_hideActionType,_pos,showTime){
        var defaultPos = _showObj.css(_pos);
        _showObj.css("opacity","1");
        var actionShow;
        var actionHide;
        switch(_pos){
            case "top":
            actionShow = {"opacity":"1"};
            actionHide = {top:defaultPos,"opacity":"1"};
            break;
            case "left":
            actionShow = {"opacity":"1"};
            actionHide = {left:defaultPos,"opacity":"1"};
            break;
            case "right":
            actionShow = {"opacity":"1"};
            actionHide = {right:defaultPos,"opacity":"1"};
            break;
            case "bottom":
            actionShow = {"opacity":"1"};
            actionHide = {bottom:defaultPos,"opacity":"1"};
            break;
        }
        _actionObj.on(_showActionType,function(){
            _showObj.stop();
            _showObj.css("display","block");
            _showObj.animate(actionShow,showTime);
        })
        _actionObj.on(_hideActionType,function(){
            _showObj.stop();
            _showObj.animate(actionHide,showTime,function(){
                _showObj.css("display","none");
            });
        })
    }

    if($('.ul-inner .cur_li').length != 0){
        $('.cur_li').parent().addClass('ul-show');
        $('.cur_li').parent().parent().addClass('li-down');
    }

    $('.li-outer').each(function(){
        if($(this).find('.ul-inner').attr('class') != undefined){
            $(this).find('.a-outer').attr('data-toggle','dropdown');
        } else {
            return
        }
    });

	//侧栏三级页面

    //新闻页折叠

    $(".news-box").each(function(){
        var that=$(this);
        var description = that.find(".des-line");
        that.find("s").click(function(){
            $(".des-line").css("display","none");
            description.css("display","block");
        })
    })

    //新闻页折叠

	//years-swiper控制

	var firstyear = [];
	$(".thisyear").text();
	$(".thisyear").each(function(){
		firstyear.push($(this).text());
	});

    var years = new Swiper('.years-swiper', {
	    autoplay: 5000,
	    autoHeight: true,
	    loop: true,
	    pagination: '.timeul',
	    paginationClickable: true,
	    paginationBulletRender: function (index, className) {
		    return '<li class='+className+'>' + parseInt(firstyear[index]) + '<i></i></li>';
		},
	    nextButton: '.nextyear',
	    prevButton: '.prevyear',
	    onSlideChangeStart: function(swiper){
            window.setTimeout(function(){$(".years-content .swiper-pagination-bullet-active").click()},100)
	    }
    });

    var timeline = (function(){
    	var initleft = (($('.timeline').width()/2)-75);
    	$('.timeul').css('margin-left',initleft+"px");

	    $('.timeul li').each(function(index){
	        $(this).click(function(){
	            $('.act_li').removeClass('act_li');
	            $('.s-show').removeClass('s-show');
	            $('.timeul').css('margin-left',initleft-index*100+'px');
	            $(this).addClass('act_li');
	            $($('.s-hide')[index]).addClass('s-show');
	        })
	    })
    })();

	//years-swiper控制

    var detial = new Swiper('.detial-swiper', {
        autoplay: 4000,
        autoHeight: true,
        loop: true,
        pagination: '.pagination-detial',
        paginationClickable: true
    });

    var recommon = new Swiper('.recommend-swiper', {
        autoplay: 5500,
        autoHeight: true,
        loop: true,
        slidesPerView : 3,
        nextButton: '.recommend-right',
        prevButton: '.recommend-left'
    });

    $('.form-sub').each(function(){
        var this_form = $(this);
        this_form.find(".sub-btn").click(function(){
            var filterEmail = /^([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-])+.)+([a-zA-Z0-9]{2,4})+$/;
            var $name = this_form.find("input[name='name']").val();
            var $phone = this_form.find("input[name='phone']").val();
            var $email = this_form.find("input[name='email']").val();
            var $message = this_form.find("input[name='message']").val() || this_form.find("textarea[name='message']").val();

            if ($name === "" || $name === "undefined") {
                alert("Please complete all fields before submitting the form!");
            } else if ($email === "" || $email === "undefined") {
                alert("Please complete all fields before submitting the form!");
            } else if (!filterEmail.test($email)) {
                alert("E-mail format is incorrect!");
            } else {
                this_form.find("input[name='clientTxt']").val("Company:" + $name + '<br/>' + "Phone:" + $phone + '<br/>' +"Email:" + $email + '<br/>' + "Message:" + $message);
            }
        });
    })

})




                            $(function(){
                                if($(".message1").text()==""){
                                  $(".sr1").hide();
                                }
                                 if($(".message2").text()==""){
                                  $(".sr2").hide();
                                }
                                 if($(".message3").text()==""){
                                  $(".sr3").hide();
                                }

                              });
            var submitcount2=0;
            function beforeSubmit2(form){

                if(form.name.value==''){
                    alert('Name can not be empty');
                    form.name.focus();
                    return false;
                }else if(form.phone.value==''){
                    alert('The phone can not be empty');
                    form.phone.focus();
                    return false;
                }
                 else if(!(/(?:\(?[0\+]\d{0,9}\)?)[\s-]?(?:(?:\(0{1,3}\))?[0\d]{1,4})[\s-](?:[\d]{7,8}|[\d]{3,4}[\s-][\d]{3,4})/).test(form.phone.value)){
                    alert('The phone is wrong');
                    form.phone.focus();
                    return false;
                }

                // else if(form.phone.value.length < 6){
                //     alert('The phone is wrong');
                //     form.phone.focus();
                //     return false;
                // }
                else if(form.email.value==''){
                    alert('Please enter the correct email format');
                    form.email.focus();
                    return false;
                }else if(form.email.value.indexOf('@')<0){
                    alert('The email is wrong');
                    form.email.focus();
                    return false;
                }
                else if(form.message.value==''){
                    alert('Need message');
                    form.message.focus();
                    return false;
                }else if(form.message.value.length<32){
                    alert('Need more information to full in the content!');
                    form.message.focus();
                    return false;
                }else{

                    if (submitcount2 == 0){
                     submitcount2++;
                      return true;
                    } else{
                    alert("Message is being sent, please wait!");
                       return false;

                    }
                }

                

            }