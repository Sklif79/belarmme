/*Added Rising13*/
/*form form_callback (Заказать звонок)*/

$(document).ready(function () {		 $('#button-search-top').on('click', function(){		console.log('a');        $('#search-panel-top').fadeToggle();    });    $('#search-panel-top .close').on('click', function(){        $('#search-panel-top').fadeOut();    });
    $('#callback .uk-modal-close').click(function () {
        clos_clear_callback();
    });
});

function clos_clear_callback() {
    $('#form_callback input[name="name"]').removeClass("error");
    $('#form_callback input[name="phone"]').removeClass("error");
	$('#form_callback input[name="call_time"]').removeClass("error");

    $('#form_callback input[name="name"]').val('');
    $('#form_callback input[name="phone"]').val('');
	$('#form_callback input[name="call_time"]').val('');
    $('#form_callback input[name="email_back"]').val('');
}


$(document).ready(function () {

    $('#form_callback input').focus(function () {
        $(this).removeClass("error");
    });

    $('#form_callback input[name="name"]').blur(function () {
        var regname = /^[а-яА-ЯёЁa-zA-Z -]+$/;
        var s3 = $('#form_callback input[name="name"]').val();
        $('#form_callback input[name="name"]').removeClass("error");
        if ((s3.length < 2) || (!regname.test(s3)) || (s3.length >= 60)) {
            $('#form_callback input[name="name"]').addClass("error");
        }
    });

    $('#form_callback input[name="phone"]').blur(function () {
        var regphone = /(\+)?([-\._\(\) ]?[\d]{2,20}[-\._\(\) ]?){2,10}/;
        var s2 = $('#form_callback input[name="phone"]').val();
        $('#form_callback input[name="phone"]').removeClass("error");
        if ((s2.length < 6) || (!regphone.test(s2)) || (s2.length >= 30)) {
            $('#form_callback input[name="phone"]').addClass("error");
        }
    });

	$('#form_feedback input[name="call_time"]').blur(function() {
		var s3=$('#form_feedback input[name="call_time"]').val();
		$('#form_feedback input[name="call_time"]').removeClass("error");
		if(s3.length<4){
			$('#form_feedback input[name="call_time"]').addClass("error");
		}
	});

    $("#form_callback").submit(function () {
        return false;
    });

    $('#form_callback button').on("click", function () {

        var regphone = /(\+)?([-\._\(\) ]?[\d]{2,20}[-\._\(\) ]?){2,10}/;
        var regname = /^[а-яА-ЯёЁa-zA-Z -]+$/;
        var valid = false;


        $('#form_callback input[name="name"]').removeClass("error");
        $('#form_callback input[name="phone"]').removeClass("error");
		$('#form_callback input[name="call_time"]').removeClass("error");

        var s1 = $('#form_callback input[name="name"]').val();
        var s2 = $('#form_callback input[name="phone"]').val();
        var s3 = $('#form_callback input[name="email_back"]').val();
		var s4 = $('#form_callback input[name="call_time"]').val();
        var s5 = $('#form_callback input[name="type_form"]').val();

        if (((s1.length >= 2) && (regname.test(s1)) && (s1.length < 60)) && ((s2.length >= 6) && (regphone.test(s2)) && (s2.length < 30)) && (s3.length === 0) && (s4.length>=4)) {
            valid = true;
        } else {
            if ((s1.length < 2) || (!regname.test(s1)) || (s1.length >= 60)) {
                $('#form_callback input[name="name"]').addClass("error");
            }

            if ((s2.length < 6) || (!regphone.test(s2)) || (s2.length >= 30)) {
                $('#form_callback input[name="phone"]').addClass("error");
            }

            if (s3.length !== 0) {
                $('#callback-header .uk-modal-dialog > h3').html("Спам!!!");
            }

			if (s4.length < 4) {
				$('#form_callback input[name="call_time"]').addClass("error");
			}
        }
        if (valid === true) {
            var z = '&name=' + s1 + '&phone=' + s2 + '&email_back=' + s3 + '&call_time='+s4+'&type_form=' + s5;
            var a_url = $('#form_callback').attr('action');
            form_callback_ajax(z, a_url);
        }
    });
});

function form_callback_ajax(val, url_ajax) {
    $.ajax({
        type: "POST",
        url: url_ajax,
        data: val,
        error: function (xhr) {
            $("#callback-header .uk-modal-close").trigger('click');
            var error_text = "<span style='color: red;'>Ошибка ";
            error_text = error_text + xhr + "К сожалению, при отправке сообщения возникли проблемы. Попробуйте отправить позже";
			sweetAlert({title:"Ошибка",text:error_text,type:"error",timer:5000});
        },
	success: function (response) {
            switch (response) {
                case "yes":
			sweetAlert({title:"Успешная отправка",text:"Спасибо, ваше сообщение отправлено, наши менеджеры скоро свяжутся с вами",type:"success",timer:5000});
                    break
                case "error":
					sweetAlert({title:"Ошибка",text:"К сожалению, при отправке сообщения возникли проблемы. Попробуйте отправить позже",type:"error",timer:5000});
                    break
                case "resubmission_val":
                    sweetAlert({title:"Повторная отправка",text:"Ваше сообщение уже отправлено, нет нужды отправлять его повторно",type:"error",timer:5000});
                    break

                case "spam":
                   sweetAlert({title:"Спам!!!",text:"Сообщение отправлено спам-ботом",type:"error",timer:5000});
                    break

                default:
                    sweetAlert({title:"Ошибка",text:"К сожалению, при отправке сообщения возникли проблемы. Попробуйте отправить позже",type:"error",timer:5000});
            }
			setTimeout(function () {
				$("#callback .uk-modal-close").trigger('click');
			},5000);
        }
    });
}



/*Added Rising13. form feedback*/
	function clos_clear_feedback() {
		$('#form_feedback input[name="name"]').removeClass("error");
		$('#form_feedback input[name="email"]').removeClass("error");
		$('#form_feedback input[name="phone"]').removeClass("error");
		$('#form_feedback textarea[name="message"]').removeClass("error");
		$('#form_feedback h3').removeAttr("style");

		$('#form_feedback input[name="name"]').val('');
		$('#form_feedback input[name="email"]').val('');
		$('#form_feedback input[name="email_back"]').val('');
		$('#form_feedback input[name="phone"]').val('');
		$('#form_feedback textarea[name="message"]').val('');
		$('#form_feedback h3').html('Обратная связь');
    }

$(document).ready(function() {

	$('#form_feedback input').focus(function() {
		$(this).removeClass("error");
	});

	$('#form_feedback textarea').focus(function() {
		$(this).removeClass("error");
	});

	$('#form_feedback input[name="name"]').blur(function() {
		var regname=/^[а-яА-ЯёЁa-zA-Z -]+$/;
		var s1=$('#form_feedback input[name="name"]').val();
		$('#form_feedback input[name="name"]').removeClass("error");
		if((s1.length<2) || (!regname.test(s1)) || (s1.length>=60)){
		$('#form_feedback input[name="name"]').addClass("error");
		}
	});

	$('#form_feedback input[name="phone"]').blur(function() {
		var regphone=/(\+)?([-\._\(\) ]?[\d]{2,20}[-\._\(\) ]?){2,10}/;
		var s2=$('#form_feedback input[name="phone"]').val();
		$('#form_feedback input[name="phone"]').removeClass("error");
		if((s2.length<6) || (!regphone.test(s2)) || (s2.length>=30)){
			$('#form_feedback input[name="phone"]').addClass("error");
		}
	});

	$('#form_feedback input[name="email"]').blur(function() {
		var regmail=/^([a-z0-9_-]+\.)*[a-z0-9_-]+@[a-z0-9_-]+(\.[a-z0-9_-]+)*\.[a-z]{2,6}$/;
		var s3=$('#form_feedback input[name="email"]').val();
		$('#form_feedback input[name="email"]').removeClass("error");
		if(!regmail.test(s3) && (s3 !="")){
			$('#form_feedback input[name="email"]').addClass("error");
		}
	});


	$('#form_feedback textarea[name="message"]').blur(function() {
		var s4=$('#form_feedback textarea[name="message"]').val();
		$('#form_feedback textarea[name="message"]').removeClass("error");
		if(s4.length<2){
			$('#form_feedback textarea[name="message"]').addClass("error");
		}
	});

$("#form_feedback").submit(function() { return false; });

	$('#form_feedback button').on("click", function(){

	var regname=/^[а-яА-ЯёЁa-zA-Z -]+$/;
	var regmail=/^([a-z0-9_-]+\.)*[a-z0-9_-]+@[a-z0-9_-]+(\.[a-z0-9_-]+)*\.[a-z]{2,6}$/;
	var regphone=/(\+)?([-\._\(\) ]?[\d]{2,20}[-\._\(\) ]?){2,10}/;
	var valid=false;

		$('#form_feedback input[name="name"]').removeClass("error");
		$('#form_feedback input[name="email"]').removeClass("error");
		$('#form_feedback input[name="phone"]').removeClass("error");
		$('#form_feedback textarea[name="message"]').removeClass("error");

		$('#form_feedback h3').removeAttr("style");
		$('#form_feedback h3').html('Обратная связь');

	var s1=$('#form_feedback input[name="name"]').val();
	var s2=$('#form_feedback input[name="phone"]').val();
	var s3=$('#form_feedback input[name="email"]').val();
	var s4=$('#form_feedback input[name="email_back"]').val();
	var s5=$('#form_feedback textarea[name="message"]').val();
	var s6=$('#form_feedback input[name="type_form"]').val();

	if(((s1.length>=2) && (regname.test(s1)) && (s1.length<60)) && ((s2.length>=6) && (regphone.test(s2)) && (s2.length<30)) && ((regmail.test(s3)) || (s3 =="")) && (s4.length==0) && (s5.length>2)){
		valid=true;
	}else{
		if((s1.length<2) || (!regname.test(s1)) || (s1.length>=60)){
			$('#form_feedback input[name="name"]').addClass("error");
		}

		if((s2.length<6) || (!regphone.test(s2)) || (s2.length>=30)){
			$('#form_feedback input[name="phone"]').addClass("error");
		}

		if((!regmail.test(s3)) && (s3 !="")){
			$('#form_feedback input[name="email"]').addClass("error");
		}

		if(s4.length!=0){
			$('#form_feedback h3').css({"background-color":"white","color":"red"});
			$('#form_feedback h3').html("Спам!!!");
		}

		if(s5.length<2){
			$('#form_feedback textarea[name="message"]').addClass("error");
		}
	}
		if(valid==true){
			var z='&name='+s1+'&phone='+s2+'&email='+s3+'&email_back='+s4+'&message='+s5+'&type_form='+s6;
			var a_url = $('#form_feedback').attr('action');
			form_feedback_ajax(z,a_url);
		}
	});
});

	function form_feedback_ajax(val,url_ajax){
		$.ajax({
	type : "POST",
	url : url_ajax,
	data : val,
	success : function(response) {
		switch (response) {
                case "yes":
			sweetAlert({title:"Успешная отправка",text:"Спасибо, ваше сообщение отправлено, наши менеджеры скоро свяжутся с вами",type:"success",timer:5000});
                    break
                case "error":
					sweetAlert({title:"Ошибка",text:"К сожалению, при отправке сообщения возникли проблемы. Попробуйте отправить позже",type:"error",timer:5000});
                    break
                case "resubmission_val":
                    sweetAlert({title:"Повторная отправка",text:"Ваше сообщение уже отправлено, нет нужды отправлять его повторно",type:"error",timer:5000});
                    break

                case "spam":
                   sweetAlert({title:"Спам!!!",text:"Сообщение отправлено спам-ботом",type:"error",timer:5000});
                    break

                default:
                    sweetAlert({title:"Ошибка",text:"К сожалению, при отправке сообщения возникли проблемы. Попробуйте отправить позже",type:"error",timer:5000});
            }
			setTimeout(function () {
			 clos_clear_feedback();
			},5000);
		}
	});
	}

/*form form_reviews_popup (оставить отзыв всплывающая форма)*/

$(document).ready(function () {
    $('#reviews .uk-modal-close').click(function () {
        clos_clear_reviews();
    });
});

function clos_clear_reviews() {
    $('#form_reviews_popup input[name="name"]').removeClass("error");
    $('#form_reviews_popup input[name="email"]').removeClass("error");
	$('#form_reviews_popup textarea[name="message"]').removeClass("error");

    $('#form_reviews_popup input[name="name"]').val('');
    $('#form_reviews_popup input[name="email"]').val('');
	$('#form_reviews_popup textarea[name="message"]').val('');
    $('#form_reviews_popup input[name="email_back"]').val('');
}


$(document).ready(function () {

    $('#form_reviews_popup input').focus(function () {
        $(this).removeClass("error");
    });

	$('#form_reviews_popup textarea').focus(function () {
        $(this).removeClass("error");
    });

    $('#form_reviews_popup input[name="name"]').blur(function () {
        var regname = /^[а-яА-ЯёЁa-zA-Z -]+$/;
        var s3 = $('#form_reviews_popup input[name="name"]').val();
        $('#form_reviews_popup input[name="name"]').removeClass("error");
        if ((s3.length < 2) || (!regname.test(s3)) || (s3.length >= 60)) {
            $('#form_reviews_popup input[name="name"]').addClass("error");
        }
    });

	$('#form_reviews_popup input[name="email"]').blur(function() {
		var regmail=/^([a-z0-9_-]+\.)*[a-z0-9_-]+@[a-z0-9_-]+(\.[a-z0-9_-]+)*\.[a-z]{2,6}$/;
		var s3=$('#form_reviews_popup input[name="email"]').val();
		$('#form_reviews_popup input[name="email"]').removeClass("error");
		if(!regmail.test(s3)){
			$('#form_reviews_popup input[name="email"]').addClass("error");
		}
	});

	$('#form_reviews_popup textarea[name="message"]').blur(function() {
		var s3=$('#form_reviews_popup textarea[name="message"]').val();
		$('#form_reviews_popup textarea[name="message"]').removeClass("error");
		if(s3.length<2){
			$('#form_reviews_popup textarea[name="message"]').addClass("error");
		}
	});

    $("#form_reviews_popup").submit(function () {
        return false;
    });

    $('#form_reviews_popup button').on("click", function () {

        var regmail=/^([a-z0-9_-]+\.)*[a-z0-9_-]+@[a-z0-9_-]+(\.[a-z0-9_-]+)*\.[a-z]{2,6}$/;
        var regname = /^[а-яА-ЯёЁa-zA-Z -]+$/;
        var valid = false;


        $('#form_reviews_popup input[name="name"]').removeClass("error");
        $('#form_reviews_popup input[name="email"]').removeClass("error");
		$('#form_reviews_popup textarea[name="message"]').removeClass("error");

        var s1 = $('#form_reviews_popup input[name="name"]').val();
        var s2 = $('#form_reviews_popup input[name="email"]').val();
        var s3 = $('#form_reviews_popup input[name="email_back"]').val();
		var s4 = $('#form_reviews_popup textarea[name="message"]').val();
        var s5 = $('#form_reviews_popup input[name="type_form"]').val();

        if (((s1.length >= 2) && (regname.test(s1)) && (s1.length < 60)) && (regmail.test(s2)) && (s3.length === 0) && (s4.length>2)) {
            valid = true;
        } else {
            if ((s1.length < 2) || (!regname.test(s1)) || (s1.length >= 60)) {
                $('#form_reviews_popup input[name="name"]').addClass("error");
            }

			if(!regmail.test(s2)){
				$('#form_reviews_popup input[name="email"]').addClass("error");
			}

            if (s3.length !== 0) {
                $('#reviews h3').html("Спам!!!");
            }

			if (s4.length <=2) {
				$('#form_reviews_popup textarea[name="message"]').addClass("error");
			}
        }
        if (valid === true) {
            var z = '&name=' + s1 + '&email=' + s2 + '&email_back=' + s3 + '&message='+s4+'&type_form=' + s5;
            var a_url = $('#form_reviews_popup').attr('action');
            form_reviews_popup_ajax(z, a_url);
        }
    });
});

function form_reviews_popup_ajax(val, url_ajax) {
    $.ajax({
        type: "POST",
        url: url_ajax,
        data: val,
        error: function (xhr) {
            $("#reviews .uk-modal-close").trigger('click');
            var error_text = "<span style='color: red;'>Ошибка ";
            error_text = error_text + xhr + "К сожалению, при отправке сообщения возникли проблемы. Попробуйте отправить позже";
			sweetAlert({title:"Ошибка",text:error_text,type:"error",timer:5000});
        },
	success: function (response) {
            switch (response) {
                case "yes":
			sweetAlert({title:"Успешная отправка",text:"Спасибо, ваше сообщение отправлено, наши менеджеры скоро свяжутся с вами",type:"success",timer:5000});
                    break
                case "error":
					sweetAlert({title:"Ошибка",text:"К сожалению, при отправке сообщения возникли проблемы. Попробуйте отправить позже",type:"error",timer:5000});
                    break
                case "resubmission_val":
                    sweetAlert({title:"Повторная отправка",text:"Ваше сообщение уже отправлено, нет нужды отправлять его повторно",type:"error",timer:5000});
                    break

                case "spam":
                   sweetAlert({title:"Спам!!!",text:"Сообщение отправлено спам-ботом",type:"error",timer:5000});
                    break

                default:
                    sweetAlert({title:"Ошибка",text:"К сожалению, при отправке сообщения возникли проблемы. Попробуйте отправить позже",type:"error",timer:5000});
            }
			setTimeout(function () {
				$("#reviews .uk-modal-close").trigger('click');
			},5000);
        }
    });
}

/*form form_order_popap (Всплывающая форма заказать товар или услугу)*/

$(document).ready(function () {
    $('#order .uk-modal-close').click(function () {
        clos_clear_order();
    });
	$('.primary-button[href="#order"]').click(function () {
        var serw_name = $('.primary-button[href="#order"]').data('order');
		$('#form_order_popup input[name="name_service"]').val(serw_name);
		console.log(serw_name);
    });
});

function clos_clear_order() {
    $('#form_order_popup input[name="name"]').removeClass("error");
    $('#form_order_popup input[name="phone"]').removeClass("error");
	$('#form_order_popup input[name="call_time"]').removeClass("error");
	$('#form_order_popup textarea[name="message"]').removeClass("error");

    $('#form_order_popup input[name="name"]').val('');
    $('#form_order_popup input[name="phone"]').val('');
	$('#form_order_popup input[name="call_time"]').val('');
	$('#form_order_popup textarea[name="message"]').val('');
    $('#form_order_popup input[name="email_back"]').val('');
}


$(document).ready(function () {

    $('#form_order_popup input').focus(function () {
        $(this).removeClass("error");
    });

	$('#form_order_popup textarea').focus(function () {
        $(this).removeClass("error");
    });

    $('#form_order_popup input[name="name"]').blur(function () {
        var regname = /^[а-яА-ЯёЁa-zA-Z -]+$/;
        var s3 = $('#form_order_popup input[name="name"]').val();
        $('#form_order_popup input[name="name"]').removeClass("error");
        if ((s3.length < 2) || (!regname.test(s3)) || (s3.length >= 60)) {
            $('#form_order_popup input[name="name"]').addClass("error");
        }
    });

	$('#form_order_popup input[name="phone"]').blur(function () {
        var regphone = /(\+)?([-\._\(\) ]?[\d]{2,20}[-\._\(\) ]?){2,10}/;
        var s2 = $('#form_order_popup input[name="phone"]').val();
        $('#form_order_popup input[name="phone"]').removeClass("error");
        if ((s2.length < 6) || (!regphone.test(s2)) || (s2.length >= 30)) {
            $('#form_order_popup input[name="phone"]').addClass("error");
        }
    });

	$('#form_order_popup input[name="call_time"]').blur(function() {
		var s3=$('#form_order_popup input[name="call_time"]').val();
		$('#form_order_popup input[name="call_time"]').removeClass("error");
		if(s3.length<4){
			$('#form_order_popup input[name="call_time"]').addClass("error");
		}
	});

	$('#form_order_popup textarea[name="message"]').blur(function() {
		var s3=$('#form_order_popup textarea[name="message"]').val();
		$('#form_order_popup textarea[name="message"]').removeClass("error");
		if(s3.length<2){
			$('#form_order_popup textarea[name="message"]').addClass("error");
		}
	});

    $("#form_order_popup").submit(function () {
        return false;
    });

    $('#form_order_popup button').on("click", function () {

		var regphone = /(\+)?([-\._\(\) ]?[\d]{2,20}[-\._\(\) ]?){2,10}/;
        var regname = /^[а-яА-ЯёЁa-zA-Z -]+$/;
        var valid = false;


        $('#form_order_popup input[name="name"]').removeClass("error");
		$('#form_order_popup input[name="phone"]').removeClass("error");
		$('#form_order_popup input[name="call_time"]').removeClass("error");
		$('#form_order_popup textarea[name="message"]').removeClass("error");

        var s1 = $('#form_order_popup input[name="name"]').val();
        var s2 = $('#form_order_popup input[name="phone"]').val();
        var s3 = $('#form_order_popup input[name="email_back"]').val();
		var s4 = $('#form_order_popup textarea[name="message"]').val();
		var s5 = $('#form_order_popup input[name="call_time"]').val();
        var s6 = $('#form_order_popup input[name="type_form"]').val();
		var s7 = $('#form_order_popup input[name="name_service"]').val();

        if (((s1.length >= 2) && (regname.test(s1)) && (s1.length < 60)) && ((s2.length>=6) && (regphone.test(s2)) && (s2.length<30)) && (s3.length === 0) && (s4.length>2) && (s5.length>=4)) {
            valid = true;
        } else {
            if ((s1.length < 2) || (!regname.test(s1)) || (s1.length >= 60)) {
                $('#form_order_popup input[name="name"]').addClass("error");
            }

            if ((s2.length < 6) || (!regphone.test(s2)) || (s2.length >= 30)) {
                $('#form_order_popup input[name="phone"]').addClass("error");
            }

            if (s3.length !== 0) {
                $('#order h3').html("Спам!!!");
            }

			if (s4.length <=2) {
				$('#form_order_popup textarea[name="message"]').addClass("error");
			}

			if (s5.length < 4) {
				$('#form_order_popup input[name="call_time"]').addClass("error");
			}
        }
        if (valid === true) {
            var z = '&name='+s1+'&phone='+s2+'&email_back='+s3+'&message='+s4+'&call_time='+s5+'&type_form='+s6+'&name_service='+s7;
            var a_url = $('#form_order_popup').attr('action');
            form_order_popup_ajax(z, a_url);
        }
    });
});

function form_order_popup_ajax(val, url_ajax) {
    $.ajax({
        type: "POST",
        url: url_ajax,
        data: val,
        error: function (xhr) {
            $("#order .uk-modal-close").trigger('click');
            var error_text = "<span style='color: red;'>Ошибка ";
            error_text = error_text + xhr + "К сожалению, при отправке сообщения возникли проблемы. Попробуйте отправить позже";
			sweetAlert({title:"Ошибка",text:error_text,type:"error",timer:5000});
        },
	success: function (response) {
            switch (response) {
                case "yes":
			sweetAlert({title:"Успешная отправка",text:"Спасибо, ваше сообщение отправлено, наши менеджеры скоро свяжутся с вами",type:"success",timer:5000});
                    break
                case "error":
					sweetAlert({title:"Ошибка",text:"К сожалению, при отправке сообщения возникли проблемы. Попробуйте отправить позже",type:"error",timer:5000});
                    break
                case "resubmission_val":
                    sweetAlert({title:"Повторная отправка",text:"Ваше сообщение уже отправлено, нет нужды отправлять его повторно",type:"error",timer:5000});
                    break

                case "spam":
                   sweetAlert({title:"Спам!!!",text:"Сообщение отправлено спам-ботом",type:"error",timer:5000});
                    break

                default:
                    sweetAlert({title:"Ошибка",text:"К сожалению, при отправке сообщения возникли проблемы. Попробуйте отправить позже",type:"error",timer:5000});
            }
			setTimeout(function () {
				$("#order .uk-modal-close").trigger('click');
			},5000);
        }
    });
}



$(document).ready(function () {
    window.belarmmet = {
        headerMobile: document.querySelector('.header-mobile'),
        headerMobileInner: document.querySelector('.header-mobile__inner'),
        headerMobileBurger: document.querySelector('.header-mobile__burger'),
        navMobile: document.querySelector('.nav-mobile'),
        navMobileInner: document.querySelector('.nav-mobile__inner'),
        isMenuOpen: false,
        init: function () {
            this.setMobileParam();
            this.headerMobileBurger.addEventListener('click', this.headerMobileBurgerHandler.bind(this));
            this.navMobile.addEventListener('click', this.navMobileHandler.bind(this));
            window.addEventListener('resize', this.resize.bind(this), true);
        },
        setMobileParam: function () {
            this.headerMobile.style.height = `${this.headerMobileInner.offsetHeight}px`;
            this.navMobileInner.style.top = `${this.headerMobileInner.offsetHeight}px`;
        },
        headerMobileBurgerHandler: function (e) {
            this.isMenuOpen = !this.isMenuOpen;
            this.checkMobileMenuState();
        },
        navMobileHandler: function (e) {
            if (e.target.classList.contains('nav-mobile')) this.closeMobileMenu();
        },
        checkMobileMenuState: function () {
            if (this.isMenuOpen) {
                this.openMobileMenu();
            } else {
                this.closeMobileMenu();
            }
        },
        closeMobileMenu: function () {
            this.headerMobileBurger.classList.remove('header-mobile__burger--active');
            document.body.classList.remove('uk-overflow-hidden');
            this.navMobile.classList.remove('nav-mobile--active');
            this.isMenuOpen = false;
        },
        openMobileMenu: function () {
            this.headerMobileBurger.classList.add('header-mobile__burger--active');
            document.body.classList.add('uk-overflow-hidden');
            this.navMobile.classList.add('nav-mobile--active');
            this.isMenuOpen = true;
        },
        resize: function () {
            if (this.isMenuOpen && window.innerWidth >= 960) this.closeMobileMenu();
        },
    };

    belarmmet.init();
});
