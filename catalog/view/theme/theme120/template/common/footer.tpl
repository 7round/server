<div class="clear"></div>
</div>
<div class="clear"></div>
</div>
<div class="footer-wrap">
<div id="footer">
	<div class="wrapper">
      <div class="col-6">
        <div class="div-h3"><?php echo $text_location; ?></div>
        <div class="cont">
          <?php echo $address; ?>
        </div>
        <ul>
          <li class="fb"><a href="https://www.facebook.com/round7/" target="_blank"></a></li>
          <li class="tw"><a href="https://twitter.com/Round7_Russia" target="_blank"></a></li>
          <li class="vk"><a href="http://vk.com/round7" target="_blank"></a></li>

        </ul>
      </div>

      <!-- noindex -->
      <div class="column col-1">
        <div class="div-h3"><?php echo $text_information; ?></div>
        <ul>
          <?php foreach ($informations as $information) { ?>

        <?php if($information['id'] == 11) continue ;?>
        <?php if($information['id'] == 12) continue ;?>
        <?php if($information['id'] == 13) continue ;?>
        <?php if($information['id'] == 14) continue ;?>
        <?php if($information['id'] == 15) continue ;?>
        <?php if($information['id'] == 16) continue ;?>
        <?php if($information['id'] == 17) continue ;?>
        <?php if($information['id'] == 18) continue ;?>
        <?php if($information['id'] == 19) continue ;?>
        <?php if($information['id'] == 19) continue ;?>
        <?php if($information['id'] == 20) continue ;?>
        <?php if($information['id'] == 21) continue ;?>
        <?php if($information['id'] == 22) continue ;?>
        <?php if($information['id'] == 23) continue ;?>
        <?php if($information['id'] == 24) continue ;?>
        <?php if($information['id'] == 25) continue ;?>


          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
              </div>
      <div class="column col-2">
        <div class="div-h3"><?php echo $text_service; ?></div>
        <ul>
		  <li><a href="<?php echo $contact; ?>">Контакты</a></li>
          <li><a href="/payment-info">Как купить ?</a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="/kak-vibrat-razmer">Как выбрать размер?</a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="column col-3">
        <div class="div-h3"><?php echo $text_extra; ?></div>
        <ul>
          <li><a href="<?php echo $manufacturer; ?>">Бренды</a></li>
          <!--<li><a href="<?php // echo $voucher; ?>"><?php // echo  $text_voucher; ?></a></li>-->
          <li><a href="<?php echo $special; ?>">Акции</a></li>
         <!-- <li><a href="http://round7.ru/index.php?route=information/information&information_id=21"> <?php // echo  $article; ?> </a></li>-->
         <?php if (isset($_SESSION['language']) and $_SESSION['language']=='ru'){?>
           <li><a href="/obzori">Статьи</a></li>
           <?php  }?>
           <li><a href="<?php echo $testimonials; ?>">Отзывы</a></li>
           <li><a href="/partners">Партнеры</a></li>


        </ul>
      </div>
      <div class="column col-4">
        <div class="div-h3"><?php echo $text_account; ?></div>
        <ul>
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
          <li><a href="<?php echo $dictionary; ?>"><?php echo $text_dictionary; ?></a></li>
        </ul>
      </div>
      <!--/ noindex -->

  </div>

</div>
<div class="wrapper" style='overflow: 	visible;'>

<div id="powered" style='position: relative;height: 60px;'>

<div class="payments">
	<ul>
		<li>
			<a href="http://round7.ru/index.php?route=information/information&amp;information_id=7">
				<img alt="evroset" src="/image/payments/b_w/evroset.png" class="not_hover">
				<img alt="evroset" src="/image/payments/color/evroset.png" class="hover">
			</a>
		</li>
		<li>
			<a href="http://round7.ru/index.php?route=information/information&amp;information_id=7">
				<img alt="sberbank" src="/image/payments/b_w/sberbank.png" class="not_hover">
				<img alt="sberbank" src="/image/payments/color/sberbank.png" class="hover">
			</a>
		</li>
		<li>
			<a href="http://round7.ru/index.php?route=information/information&amp;information_id=7">
				<img alt="mastercard" src="/image/payments/b_w/mastercard.png" class="not_hover">
				<img alt="mastercard" src="/image/payments/color/mastercard.png" class="hover">
			</a>
		</li>
		<li>
			<a href="http://round7.ru/index.php?route=information/information&amp;information_id=7">
				<img alt="qiwi" src="/image/payments/b_w/qiwi.png" class="not_hover">
				<img alt="qiwi" src="/image/payments/color/qiwi.png" class="hover">
			</a>
		</li>
		<li>
			<a href="http://round7.ru/index.php?route=information/information&amp;information_id=7">
				<img alt="rapida" src="/image/payments/b_w/rapida.png" class="not_hover">
				<img alt="rapida" src="/image/payments/color/rapida.png" class="hover">
			</a>
		</li>
		<li>
			<a href="http://round7.ru/index.php?route=information/information&amp;information_id=7">
				<img alt="a-bank" src="/image/payments/b_w/a-bank.png" class="not_hover">
				<img alt="a-bank" src="/image/payments/color/a-bank.png" class="hover">
			</a>
		</li>
		<li>
			<a href="http://round7.ru/index.php?route=information/information&amp;information_id=7">
				<img alt="svyaznoy" src="/image/payments/b_w/svyaznoy.png" class="not_hover">
				<img alt="svyaznoy" src="/image/payments/color/svyaznoy.png" class="hover">
			</a>
		</li>
		<li>
			<a href="http://round7.ru/index.php?route=information/information&amp;information_id=7">
				<img alt="visa" src="/image/payments/b_w/visa.png" class="not_hover">
				<img alt="visa" src="/image/payments/color/visa.png" class="hover">
			</a>
		</li>
		<li>
			<a href="http://round7.ru/index.php?route=information/information&amp;information_id=7">
				<img alt="yandex_money" src="/image/payments/b_w/yandex_money.png" class="not_hover">
				<img alt="yandex_money" src="/image/payments/color/yandex_money.png" class="hover">
			</a>
		</li>
	</ul>
	<div class="counters">

		<!-- Yandex.Metrika informer -->
		<a href="https://metrika.yandex.ru/stat/?id=22785496&amp;from=informer"
		target="_blank" rel="nofollow"><img src="//bs.yandex.ru/informer/22785496/1_1_F0F0F0FF_F0F0F0FF_0_pageviews"
		style="width:80px; height:15px; border:0;" alt="Яндекс.Метрика" title="Яндекс.Метрика: данные за сегодня (просмотры)" onclick="try{Ya.Metrika.informer({i:this,id:22785496,lang:'ru'});return false}catch(e){}"/></a>
		<!-- /Yandex.Metrika informer -->

		<!-- Yandex.Metrika counter -->
		<script type="text/javascript">
		(function (d, w, c) {
			(w[c] = w[c] || []).push(function() {
				try {
					w.yaCounter22785496 = new Ya.Metrika({id:22785496,
							webvisor:true,
							clickmap:true,
							trackLinks:true,
							accurateTrackBounce:true});
				} catch(e) { }
			});

			var n = d.getElementsByTagName("script")[0],
				s = d.createElement("script"),
				f = function () { n.parentNode.insertBefore(s, n); };
			s.type = "text/javascript";
			s.async = true;
			s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";

			if (w.opera == "[object Opera]") {
				d.addEventListener("DOMContentLoaded", f, false);
			} else { f(); }
		})(document, window, "yandex_metrika_callbacks");
		</script>
		<noscript><div><img src="//mc.yandex.ru/watch/22785496" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
		<!-- /Yandex.Metrika counter -->

		<!-- noindex -->
		<span id="rambler">
		<script id="top100Counter" type="text/javascript" src="http://counter.rambler.ru/top100.jcn?2878877"></script>
		<noscript>
		<!-- <a href="http://top100.rambler.ru/navi/2878877/">
		<img src="http://counter.rambler.ru/top100.cnt?2878877" alt="Rambler's Top100" border="0"/>
		</a> -->
		</noscript>
		</span>
		<!--/ noindex -->
		<!-- end of Top100 code -->

		<!--
		begin WebMoney Transfer : accept label
		<a href="http://www.megastock.ru/">
		<img border="0" alt="" src="image/footerImage/acc_white_on_transp_ru.1.png"> </a>
		  <! end WebMoney Transfer : accept label -->


		<!-- begin WebMoney Transfer : accept label -->
		<!-- noindex -->
		<a href="http://www.megastock.ru/" target="_blank"><img src="image/footerImage/acc_white_on_transp_ru.1.png" alt="www.megastock.ru" style="border: 0;">
		</a>
		<!--/ noindex -->
		<!-- end WebMoney Transfer : accept label -->


		<!-- webmoney attestation label#966A58DC-5F26-4D4C-BB50-0FB85CF13F14 begin -->
		<!-- noindex -->
		<a href="//passport.webmoney.ru/asp/certview.asp?wmid=338255669209" target=_blank>
		<img style="border: 0;" src="//passport.webmoney.ru/images/atstimg/88x31_user/88x31_wm_v_blue_on_white_ru.png" alt="www.passport.webmoney.ru"/>
		</a>
		<!--/ noindex -->
		<!-- webmoney attestation label#966A58DC-5F26-4D4C-BB50-0FB85CF13F14 end -->

	</div>
	<div class="clear"></div>
</div>

<script>
	$(function(){

		$(".payments li").on("mouseenter", function(){
			$(this).find("img.not_hover").css("display", "none");
			$(this).find("img.hover").css("display", "block");
		})

		$(".payments li").on("mouseleave", function(){
			$(this).find("img.not_hover").css("display", "block");
			$(this).find("img.hover").css("display", "none");
		})

	})
</script>

</div>
  </div>
</div>
<!-- <div id="footerImages"> -->
	<!-- noindex -->
	<!-- <a href="http://round7.ru/index.php?route=information/information&information_id=7"><img src="image/footerImage/cards.png" alt="Viza Cards" border="0"/></a>
	<a href="http://round7.ru/index.php?route=information/information&information_id=7"><img src="image/footerImage/sberbank.png" alt="Viza Cards" border="0"/></a>
	<a href="http://round7.ru/index.php?route=information/information&information_id=7"><img src="image/footerImage/qiwiwallet.png" alt="Viza Cards" border="0"/></a>
	<a href="http://round7.ru/index.php?route=information/information&information_id=7"><img src="image/footerImage/yandex.png" alt="Viza Cards" border="0"/></a> -->
	<!--<a href="http://round7.ru/index.php?route=information/information&information_id=7"><img src="image/footerImage/webmoney.png" alt="Viza Cards" border="0"/></a>-->
	<!--/ noindex -->
<!-- </div> -->

<div class="copyright">&copy; 2012-<?php echo date("Y"); ?> Round7.ru</div>

<script type="text/javascript" 	src="catalog/view/javascript/livesearch.js"></script>
</div>


<!-- BEGIN JIVOSITE CODE {literal} -->
<script type='text/javascript'>
(function(){ var widget_id = 'OMjwULRNiD';
var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = '//code.jivosite.com/script/widget/'+widget_id; var ss = document.getElementsByTagName('script')[0]; ss.parentNode.insertBefore(s, ss);})();</script>
<!-- {/literal} END JIVOSITE CODE -->



<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-39567982-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</body>
</html>
