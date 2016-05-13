<!DOCTYPE html>

<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
 <head>
  <meta charset="UTF-8" />
  <meta name="google-site-verification" content="asv9TSRkhlrN0abR0gE-zzszjQgzuHizSm2zHZj4O00" />
  <meta name='wmail-verification' content='80db923a5d9d1ddd' />
  <meta name='yandex-verification' content='5690102fb837e4cd' />
  <meta name="description" content="Round7.ru – интернет-магазин экипировки для боевых видов спорта. Мы поставляем экипировку напрямую из Европы. Ассортимент нашего магазина насчитывает свыше 400 видов продукции."/>
  
  <title><?php echo $title; ?></title>
  
  <link href="/raund7.ru/docs/image/favicon.ico" rel="icon" type="image/x-icon" />

  <base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
   <meta name="description" content="<?php echo $description; ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
   <meta name="keywords" content="<?php echo $keywords; ?>" />
  <?php } ?>
  <?php if ($icon) { ?>
   <link href="<?php echo $icon; ?>" rel="icon" />
  <?php } ?>
  <?php foreach ($links as $link) { ?>
   <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/stylesheet.css" />
  <link href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/cloud-zoom.css" rel="stylesheet" type="text/css" />
  <link href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/superfish.css" rel="stylesheet" type="text/css" />
  <link href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/slideshow.css" rel="stylesheet" type="text/css" />
  <link href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/jquery.prettyPhoto.css" rel="stylesheet" type="text/css" />
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
  <?php echo $google_analytics; ?>
 </head>
 <body class="<?php echo empty($this->request->get['route']) ? 'common-home' : str_replace('/', '-', $this->request->get['route']); ?>">
  <div class="main-shining">
   <div class="row-1">
    <div id="header">
          <?php if ($logo) { ?>
      <div id="logo">
      <a id="logo_home" href="<?php echo $home; ?>">
      <img src="<?php echo $logo; ?>" 
      title="<?php echo $name; ?>" 
      alt="<?php echo $name; ?>" </div>
      </a>
        
       <div id="yangiKontakt"><img src="kontakt_tel.gif" alt="tel"> &nbsp;+7 951 784-48-22&nbsp;(Россия)&nbsp;&nbsp;<img src="skype.gif" alt="skype" > &nbsp;round7cz&nbsp;(Skype)</div>
       
       
      
      </div>
     <?php } ?>

    <div class="header-top1">
    <!-- noindex -->
      <?php echo $language; ?>

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
        <?php if($information['id'] == 22) continue ;?>
        <?php if($information['id'] == 23) continue ;?>
        <?php if($information['id'] == 24) continue ;?>
        
                
        
         <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
            <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
             <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
             <li><a href="/obzori/">Статьи</a></li>
           </ul>
    <div class="clear"></div>
    </div>
      <!--<pre>  <?php echo print_r($informations);?></pre> -->
      <div id="menu">
              
     <script type="text/javascript">
      $(document).ready(function(){
			   
       $('.menu ul li').last().addClass('last');
       $('.menu ul li li').last().addClass('last');
      });
			
     </script>
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
     <div id="notification"> 
          </div>
