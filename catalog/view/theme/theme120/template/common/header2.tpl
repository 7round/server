<!DOCTYPE html>

<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
 <head>
  <meta charset="UTF-8" />
  <meta name="google-site-verification" content="asv9TSRkhlrN0abR0gE-zzszjQgzuHizSm2zHZj4O00" />
  <meta name='wmail-verification' content='80db923a5d9d1ddd' />
  <meta name='yandex-verification' content='5690102fb837e4cd' />
  <!-- <meta name="description" content="Round7.ru – интернет-магазин экипировки для боевых видов спорта. Мы поставляем экипировку напрямую из Европы. Ассортимент нашего магазина насчитывает свыше 400 видов продукции."/> -->
  
  <title><?php echo $title; ?></title>

  <base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
   <meta name="description" content="<?php echo $description; ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
   <meta name="keywords" content="<?php echo $keywords; ?>" />
  <?php } ?>
  <link rel="icon" href="http://round7.ru/favicon.ico" type="image/x-icon">
  <?php //if ($icon) { ?>
   <!-- <link href="<?php echo $icon; ?>" rel="icon" /> -->
  <?php //} ?>
  <?php foreach ($links as $link) { ?>
   <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/stylesheet.css" />
  <link href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/cloud-zoom.css" rel="stylesheet" type="text/css" />
  <link href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/superfish.css" rel="stylesheet" type="text/css" />
  <link href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/slideshow.css" rel="stylesheet" type="text/css" />
  <link href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/jquery.prettyPhoto.css" rel="stylesheet" type="text/css" />

  <link href='http://fonts.googleapis.com/css?family=Cuprum&subset=latin,cyrillic' rel='stylesheet' type='text/css'>

  <?php foreach ($styles as $style) { ?>
  
   <link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
  <?php } ?>
  <script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
  <script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
  <link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
  <script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
  <script type="text/javascript" src="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
  <link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
  <script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
  <script type="text/javascript" src="catalog/view/javascript/jquery/jquery.jcarousel.min.js"></script>
  <script type="text/javascript" src="catalog/view/javascript/jquery/jquery.cycle.js"></script>
  <script type="text/javascript" src="http://vk.com/js/api/openapi.js?101"></script>
  <script type="text/javascript" src="http://vk.com/js/api/share.js?86" charset="windows-1251"></script>
  
  <link href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/skin.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
  <link href='http://fonts.googleapis.com/css?family=Alfa+Slab+One' rel='stylesheet' type='text/css'>

  <link rel='stylesheet' id='camera-css'  href='catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/camera.css' type='text/css' media='all'> 
  <!--[if IE]>
  <script type="text/javascript" src="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4-iefix.js"></script>
  <![endif]-->
  <!--[if lt IE 8]><div style='clear:both;height:59px;padding:0 15px 0 15px;position:relative;z-index:10000;text-align:center;'><a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." /></a></div><![endif]-->
  <script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
  <script type="text/javascript" src="catalog/view/javascript/jquery/easyTooltip.js"></script>
  <script type="text/javascript" src="catalog/view/javascript/common.js"></script>
  <script type="text/javascript" src="catalog/view/javascript/jQuery.equalHeights.js"></script>
  <script type="text/JavaScript" src="catalog/view/javascript/cloud-zoom.1.0.2.js"></script>
  <script type="text/javascript" src="catalog/view/javascript/jquery.prettyPhoto.js"></script>
  <script type="text/javascript" src="catalog/view/javascript/jscript_zjquery.anythingslider.js"></script>
  <script type="text/javascript" src="catalog/view/javascript/superfish.js"></script>
  <script type="text/javascript" src="catalog/view/javascript/jquery.bxSlider.min.js"></script>
  <script type="text/javascript" src="catalog/view/javascript/script.js"></script>
  <script type="text/javascript" src="catalog/view/javascript/jquery/nivo-slider/jquery.nivo.slider.pack.js"></script>

  <script type='text/javascript' src='catalog/view/javascript/sl/camera.min.js'></script> 
  <?php foreach ($scripts as $script) { ?>
   <script type="text/javascript" src="<?php echo $script; ?>"></script>
  <?php } ?>
  <!--[if  IE 8]>
                             <style>
                                                        .success, #header #cart .content  { border:1px solid #e7e7e7;}
                             </style>
  <![endif]-->

  <!--[if  IE 7]>
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/ie7.css" />
  <![endif]-->
  <!--[if lt IE 7]>
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/ie6.css" />
  <script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
  <script type="text/javascript">
  DD_belatedPNG.fix('#logo img');
  </script>
  <![endif]-->
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/livesearch.css"/>
  
  <!-- Put this script tag to the <head> of your page -->
	<script type="text/javascript" src="//vk.com/js/api/openapi.js?116"></script>

	<script type="text/javascript">
		VK.init({apiId: 4783174, onlyWidgets: true});
	</script>
	
	<script type="text/javascript" src="http://vk.com/js/api/share.js?90" charset="windows-1251"></script>
	
	<script type="text/javascript" src="//vk.com/js/api/openapi.js?116"></script>
  
  <?php echo $google_analytics; ?>
 </head>

<body class="<?php echo empty($this->request->get['route']) ? 'common-home' : str_replace('/', '-', $this->request->get['route']); ?>">
  <div class="main-shining">
    <div class="row-1">
      <div id="header">
        <?php if ($logo) { ?>
          <div id="logo">
            <a id="logo_home" href="<?php echo $home; ?>">
              <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" />
            </a>

          </div>
        <?php } ?>

        <div id="yangiKontakt">
		<!-- <img src="kontakt_tel.png" alt="tel" height="26"> -->
         <?php if ($_SESSION['language']=='ru'){?>
		 <span>+7 (351)</span> 750-73-75
		 <?php }else{ ?>
		 &nbsp;+420 608 556 999&nbsp;(Czech Republic)
		 <?php } ?>
         <!-- &nbsp;&nbsp;<img src="skype.gif" alt="skype" width="26" height="26"> &nbsp;round7cz&nbsp;(Skype) -->
		 </div>
		<div id="time" >
		<p>режим работы с <span>8.00</span> до <span>20.00</span></p>
		<p>(время Московское)</p>
		</div>
		<div class="site-feedback" <?php if(isset($_SESSION['language']) and $_SESSION['language']=='en'){?>style='left:492px;'<?php } ?>>
		<p>8 800 333 48 96</p>
		  <ul>
		    <li class="callback"><a id="call-link" onclick="$('#contactable').fadeIn();" ><?php echo $subject;?></a></li>
		  </ul>
		</div>


    <div class="header-top1">
    <!-- noindex -->
      <?php echo $language; ?>
      <?php echo $currency; ?>


      <div class="clear"></div>
      <div id="welcome">
      <div class="clear"></div>
        <?php if (!$logged) { ?>
          <?php echo $text_welcome; ?>
        <?php } else { ?>
          <?php echo $text_logged; ?>
        <?php } ?>
      </div>
      <div class="clear"></div>

      <div class="cart-position">
        <div class="cart-inner"><?php echo $cart; ?></div>
      </div>
   <!--/ noindex -->
   </div>

     <div class="clear"></div>
    </div>

    <div class="topmenu">
      <div id="search">
        <!-- noindex -->
        <div class="button-search"></div>
        <?php if ($filter_name) { ?>
          <span class="search-bg">
            <input type="text" name="filter_name" value=""  />
          </span>
        <?php } else { ?>
          <span class="search-bg">
            <input type="text" name="filter_name" value="" onClick="this.value = '';"  />
          </span>
        <?php } ?>
      <!--/ noindex -->
      </div>
      <ul class="links">

      <?php foreach ($informations as $information) { ?>
        <?php if($information['id'] == 3) continue ;?>
        <?php if($information['id'] == 5) continue ;?>

        <?php if($information['id'] == 11) continue ;?>
        <?php if($information['id'] == 12) continue ;?>
        <?php if($information['id'] == 13) continue ;?>
        <?php if($information['id'] == 14) continue ;?>
        <?php if($information['id'] == 15) continue ;?>
        <?php if($information['id'] == 16) continue ;?>
        <?php if($information['id'] == 17) continue ;?>
        <?php if($information['id'] == 18) continue ;?>
        <?php if($information['id'] == 19) continue ;?>
        <?php if($information['id'] == 20) continue ;?>
        <?php if($information['id'] == 21) continue ;?>
        <?php if($information['id'] == 23) continue ;?>
		<?php if($information['id'] == 22) continue ;?>
        <?php if($information['id'] == 24) continue ;?>

        <?php if ($information['id'] != 4) { ?>
          <!-- noindex -->
        <?php } ?>
        <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
        <?php if ($information['id'] != 4) { ?>
        <!--/ noindex -->
        <?php } ?>
      <?php } ?>

        <!-- noindex -->
		<li><a href="/index.php?route=product/testimonial">Отзывы</a></li>
		<li><a href="<?php echo $special; ?>">Акции</a></li>
		<li><a href="/optovie-postavki">Опт</a></li>
        <!-- <li><a href="<?php //echo $return; ?>"><?php //echo $text_return; ?></a></li> -->
        <li><a href="<?php echo $contact; ?>">Контакты</a></li>
        <!--/ noindex -->
        <?php //if (isset($_SESSION['language']) and $_SESSION['language']=='ru'){?>
        <!-- <li><a href="/obzori/">Статьи</a></li> -->
        <?php //} ?>
      </ul>
    <div class="clear"></div>
    </div>
      <div id="menu">
              
     <script type="text/javascript">
      $(document).ready(function(){
			   
       $('.menu ul li').last().addClass('last');
       $('.menu ul li li').last().addClass('last');
      });
			
     </script>

<?php /*
     <?php if ($categories) { ?>
      <ul  class="menu">
        <?php $cv = 0; ?>
        <?php foreach ($categories as $category) {
         $cv++; ?>
         <?php if ($category['category_id'] == $category_id) { ?>
         <li class="active cat_<?php echo $cv ?>">
          <?php } else { ?>
         <li class="cat_<?php echo $cv ?>">
          <?php } ?>
         <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
          <?php if ($category['children']) { ?>

            <?php for ($i = 0; $i < count($category['children']);) { ?>
           <ul>
             <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
             <?php for (; $i < $j; $i++) { ?>
     <?php if (isset($category['children'][$i])) { ?>
                <?php $id = $category['children'][$i]['category_id']; ?>
                <?php if ($id == $child_id) { ?>
               <li class="active">
                 <?php } else { ?>
               <li>
                 <?php } ?>
                 <?php if ($category['children'][$i]['children3']) { ?>
                <a class="screenshot1"  href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
                <ul>
                 <?php foreach ($category['children'][$i]['children3'] as $ch3) { ?>
                  <li>
                 <?php if ($ch3['category_id'] == $ch3_id) { ?>
                    <a href="<?php echo $ch3['href']; ?>" class="active"><?php echo $ch3['name']; ?></a>
                 <?php } else { ?>
                    <a href="<?php echo $ch3['href']; ?>"><?php echo $ch3['name']; ?></a>
                <?php } ?>
                  </li>
              <?php } ?>
                </ul>
             <?php } else { ?>
                <a class="screenshot1"  href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
            <?php } ?>
              </li>
          <?php } ?>
    <?php } ?>
           </ul>
   <?php } ?>
  <?php } ?>
        </li>
    <?php } ?>
      </ul>
    <?php } ?>
*/ ?>

     <div class="clear"></div>
    </div>
   </div>
   <div class="clear"></div>

   <?php if ($modules) { ?>
    <div class="header-modules">
 <?php foreach ($modules as $module) { ?>
  <?php echo $module; ?>
 <?php } ?>
     <div class="clear"></div>
    </div>
    <div class="clear"></div>
<?php } ?>
   <div class="main-container">
    <p id="back-top"> <a href="#top"><span></span></a> </p>
    <div id="container">

     <div id="notification"></div>
     <div id="contactable"></div>

<!-- Contactable -->
<link rel="stylesheet" type="text/css" href="catalog/view/theme/theme120/stylesheet/contactable.css" />
<script type="text/javascript" src="contactable/jquery.validate.min.js"></script>



<script type='text/javascript'>




(function($){

	//define the new for the plugin ans how to call it	
	$.fn.contactable = function(options) {
		//set default options  
		var defaults = {
			url: 'contactable/mail.php',
			name: '<?php echo $name;?>',
			phone: '<?php echo $phone;?>',
			ctime : '<?php echo $ctime;?>',
			subject : '<?php echo $subject;?>',
            page : location.href,
			submit : '<?php echo $submit;?>',
			recievedMsg : '<?php if (isset($recieveMsg))echo $recieveMsg;?>',
			notRecievedMsg : '<?php echo $notRecievedMsg;?>',
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
                '<h3><?php echo $subject;?></h3>' +
                '<a id="close"></a>' +
                '<form id="contactForm" action="" method="">' +
                '    <div id="loading"></div>' +
                '    <div id="callback"></div>' +
                '    <div class="holder">' +
                '       <p><?php echo $name;?><span class="red_text">*</span>:</p>' +
                '       <input id="name" class="contact" name="name"/>' +
                '       <p><?php echo $phone;?><span class="red_text">*</span>:</p>' +
                '       <input id="phone" class="contact" name="phone" />' +
                '       <p><?php echo $ctime;?>:</p>' +
                '       <input id="ctime" class="contact" name="ctime" />' +
                '       <p><span class="red_text">*</span> - <?php echo $red_text;?></p>' +
                '       <div id="contactable_button">' +
                '           <input class="button btn btn-theme-default" type="submit" id="button1" value="<?php echo $sendd;?>"/>' +
                '           <input type="button" id="button2" value="<?php echo $canceld;?>">' +
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



</script>



<!-- Contactable -->

<script type="text/javascript">
    $(document).ready(function(){$('#contactable').contactable();});
</script>