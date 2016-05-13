/*
 * contactable 1.2.1 - jQuery Ajax contact form
 *
 * Copyright (c) 2009 Philip Beel (http://www.theodin.co.uk/)
 * Dual licensed under the MIT (http://www.opensource.org/licenses/mit-license.php) 
 * and GPL (http://www.opensource.org/licenses/gpl-license.php) licenses.
 *
 * Revision: $Id: jquery.contactable.js 2010-01-18 $
 *
 */
 
//extend the plugin
(function($){

	//define the new for the plugin ans how to call it	
	$.fn.contactable = function(options) {
		//set default options  
		var defaults = {
			url: 'contactable/mail.php',
			name: 'Ваше имя',
			phone: 'Телефон',
			ctime : 'Удобное время для звонка',
			subject : 'Заказ звонка',
            page : location.href,
			submit : 'Отправить письмо',
			recievedMsg : 'Ваш запрос отправлен администратору',
			notRecievedMsg : 'Извините, но при отправке письма произошла ошибка, попробуйте позже',
			disclaimer: '',
			hideOnSubmit: true

		};

		//call in the default otions
		var options = $.extend(defaults, options);
		//act upon the element that is passed into the design    
		return this.each(function() {
			//construct the form
			var this_id_prefix = '#'+this.id+' ';
			$(this).html(
                '<h3>Заказать звонок</h3>' +
                '<a id="close"></a>' +
                '<form id="contactForm" action="" method="">' +
                '    <div id="loading"></div>' +
                '    <div id="callback"></div>' +
                '    <div class="holder">' +
                '       <p>Ваше имя<span class="red_text">*</span>:</p>' +
                '       <input id="name" class="contact" name="name"/>' +
                '       <p>Телефон<span class="red_text">*</span>:</p>' +
                '       <input id="phone" class="contact" name="phone" />' +
                '       <p>Удобное время для звонка:</p>' +
                '       <input id="ctime" class="contact" name="ctime" />' +
                '       <p><span class="red_text">*</span> - поля обязательны для заполнения</p>' +
                '       <div id="contactable_button">' +
                '           <input class="button btn btn-theme-default" type="submit" id="button1" value="Отправить"/>' +
                '           <input type="button" id="button2" value="Отмена">' +
                '       </div>' +
                '    </div>' +
                '</form>'
                );
			//show / hide function
			$(this_id_prefix+'a#close').click(function() {
                $(this_id_prefix).fadeOut();
			});

            $(this_id_prefix+' #button2').click(function() {
                $(this_id_prefix).fadeOut();
            });

			//validate the form 
			$(this_id_prefix+"#contactForm").validate({
				//set the rules for the fild names
				rules: {
					name: {
						required: true,
						minlength: 2
					},
                    phone: {
                        required: true,
                    },
					ctime: {
						required: true
					}
				},
				//set messages to appear inline
				messages: {
				    name: "введите имя",
                    phone: "введите телефон",
                    ctime: "ведите время звонка"
				},

				submitHandler: function() {
					$(this_id_prefix+'.holder').hide();
					$(this_id_prefix+'#loading').show();

                    $.ajax({
                      type: 'POST',
                      url: options.url,
                      data: {
                            subject:options.subject,
                            page:options.page,
                            name:$(this_id_prefix+'#name').val(),
                            email:$(this_id_prefix+'#email').val(),
                            phone:$(this_id_prefix+'#phone').val(),
                            ctime:$(this_id_prefix+'#ctime').val(),
                            message:$(this_id_prefix+'#message').val()
                      },
                            success: function(data){
        						$(this_id_prefix+'#loading').css({display:'none'});
	    					    if( data == 'success') {
		    					    $(this_id_prefix+'#callback').show().append(options.recievedMsg);
                                    $(this_id_prefix).css({height:'166px'});

	    			    			if(options.hideOnSubmit == true) {
		    			    			//hide the tab after successful submition if requested
			    			    		//$(this_id_prefix+'#contactForm').animate({dummy:1}, 2000).animate({"marginLeft": "-=450px"}, "slow");
				    			    	//$(this_id_prefix+'div#contactable_inner').animate({dummy:1}, 2000).animate({"marginLeft": "-=447px"}, "slow").animate({"marginLeft": "+=5px"}, "fast");
					    			    $(this_id_prefix+'#overlay').css({display: 'none'});
    	    		    				setTimeout(function(){
                                            $(this_id_prefix).fadeOut();
    				    		    	},2000);
    					    		}
	    					    } else {
    		    					$(this_id_prefix+'#callback').show().append(options.notRecievedMsg);
	    		    				setTimeout(function(){
		    		    				$(this_id_prefix+'.holder').show();
			    		    			$(this_id_prefix+'#callback').hide().html('');
				    		    	},2000);
    				    		}
    	    				},
                            error:function(){
                                $(this_id_prefix+'#loading').css({display:'none'});
                                $(this_id_prefix).css({height:'166px'});
                                $(this_id_prefix+'#callback').show().append(options.notRecievedMsg);
                                $(this_id_prefix+'#callback').css({color:'red'});
                            }
                    });
				}
			});
		});
	};

})(jQuery);
