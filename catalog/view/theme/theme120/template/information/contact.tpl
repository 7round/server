<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1>Контакты</h1>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="contact">
    <h2 style="display:none"><?php echo $text_location; ?></h2>
    <div class="contact-info">
      <div class="content">
		<div class="map-left">      
			<!-- <div class="contact-box">
				<b><?php echo $text_address; ?></b><br />
	        	<?php echo $address; ?>
	    	</div>
	        <div class="contact-box-2">
		        <?php if ($telephone) { ?>
		        <b><?php echo $text_telephone; ?></b><br />
		        <?php echo $telephone; ?><br />
		        <br />
		        <?php } ?>
		        <?php if ($fax) { ?>
		        <b><?php echo $text_fax; ?></b><br />
		        <?php echo $fax; ?>
		        <?php } ?>
	        </div> -->
	        <div class="contact-box">
				<b>Центральный офис</b>
				<br/>
	        	<p>г. Челябинск, ул. Цвиллинга 35,</p>
	        	<p>454091, Россия</p>
	    	</div>
	        <div class="contact-box-2">
		        <p>ПН-СБ: с 08-00 до 20-00</p>
		        <p>Вс: Выходной</p>
		        <p>8-800-333-48-96 (бесплатно по РФ)</p>
		        <p>+7 (351) 750-73-75 (для жителей СНГ)</p>
	        </div>
	        <div class="contact-box-3">
	        	<p><b>Директор по продажам на территории <br> РФ и СНГ:</b></p>
		        <p>Тюпин Александр Вадимович</p>
		        <p><b>email:</b> <a href="mailto:a.tyupin@round7.ru">a.tyupin@round7.ru</a></p>
	        </div>
	        <div class="contact-box-4">
	        	<b>Центральный склад</b>
				<br/>
	        	<p>г. Прага, ул. Над лесным дивадлом 1117/10, Браник, 14200, Чехия</p>
		        <p><b>Отдел логистики:</b> <br>Руськин Аркадий Станиславович</p>
		        <p><b>тел. :</b> +420 608 556 999,</p>
                <p><b>email:</b> <a href="mailto:info@round7.ru">info@round7.ru</a></p>
	        </div>
      	</div>
        <div class="map-content">         
            <figure>
				<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d4558.891745690544!2d61.40094074278437!3d55.1579749739749!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x43c5ed4d09bff18f%3A0xde2354e1b4cf207a!2z0YPQuy4g0KbQstC40LvQu9C40L3Qs9CwLCAzNSwg0KfQtdC70Y_QsdC40L3RgdC6LCDQp9C10LvRj9Cx0LjQvdGB0LrQsNGPINC-0LHQuy4sIDQ1NDA5MQ!5e0!3m2!1sru!2sru!4v1422056398075" width="385" height="375" frameborder="0" style="border:0"></iframe>
	        </figure>
        </div>
        <table class="filials">
        	<tr>
        		<td>
        			<b>г. Москва</b>
        			<p>Отрадный проезд 5, 127273,</p>
        			<p>ПН-ПТ: с 09-00 до 19-00</p>
        			<p>Cб.,Вс: Выходной,</p>
        			<p><b>тел. :</b> 8-800-333-48-96</p>
        			<p><b>менеджер:</b> Суриков Геннадий Дмитриевич</p>
        			<p><b>email:</b> <a href="mailto:g.surikov@round7.ru">g.surikov@round7.ru</a></p>
        		</td>
        		<td>
        			<b>г. Санкт-Петербург</b>
        			<p>ул. Рощинская 32, 197110,</p>
        			<p>ПН-ПТ: с 09-00 до 19-00</p>
        			<p>Cб.,Вс: Выходной,</p>
        			<p><b>тел. :</b> 8-800-333-48-96</p>
        			<p><b>менеджер:</b> Лопатин Антон Юрьевич</p>
        			<p><b>email:</b> <a href="mailto:a.lopatin@round7.ru">a.lopatin@round7.ru</a></p>
        		</td>
        		<tr>
        		<td>
        			<b>г. Екатеринбург</b>
        			<p>ул. Малышева 36, 620014,</p>
        			<p>ПН-ПТ: с 09-00 до 19-00</p>
        			<p>Cб.,Вс: Выходной,</p>
        			<p><b>тел. :</b> 8-800-333-48-96</p>
        			<p><b>менеджер:</b> Коробов Максим Вячеславович</p>
        			<p><b>email:</b> <a href="mailto:m.korobov@round7.ru">m.korobov@round7.ru</a></p>
        		</td>
        		<td>
        			<b>г. Казань</b>
        			<p>проспект Победы 206, 420100,</p>
        			<p>ПН-ПТ: с 09-00 до 18-00</p>
        			<p>Cб.,Вс: Выходной,</p>
        			<p><b>тел. :</b> 8-800-333-48-96</p>
        			<p><b>менеджер:</b> Алтынов Рафаэль Хасанович</p>
        			<p><b>email:</b> <a href="mailto:r.altynov@round7.ru">r.altynov@round7.ru</a></p>
        		</td>
        		<tr>
        		<td>
        			<b>г. Новосибирск</b>
        			<p>пл. Карла Маркса 5, 630048,</p>
        			<p>ПН-ПТ: с 09-00 до 18-30</p>
        			<p>Cб.,Вс: Выходной,</p>
        			<p><b>тел. :</b> 8-800-333-48-96</p>
        			<p><b>менеджер:</b> Краснопёрова Ксения Викторовна</p>
        			<p><b>email:</b> <a href="mailto:sibir@round7.ru">sibir@round7.ru</a></p>
        		</td>
        		<td>
        			<b>г. Ростов-на-Дону</b>
        			<p>ул. Менжинского 2Л, 355029,</p>
        			<p>ПН-ПТ: с 09-00 до 20-00</p>
        			<p>Cб.,Вс: Выходной,</p>
        			<p><b>тел. :</b> 8-800-333-48-96</p>
        			<p><b>менеджер:</b> Сафронов Игорь Николаевич</p>
        			<p><b>email:</b> <a href="mailto:i.safronov@round7.ru">i.safronov@round7.ru</a></p>
        		</td>
        	</tr>
        </table>
      </div>
    </div>
    
    <div class="content contact-f"><h2><?php echo $text_contact; ?></h2>
<div class="padd-content">   <div class="extra-wrap"> <div class="contact-form-left"><b><?php echo $entry_name; ?></b><br />
    <input class="q2" type="text" name="name" value="<?php echo $name; ?>" />
    <br />
    <?php if ($error_name) { ?>
    <span class="error"><?php echo $error_name; ?></span>
    <?php } ?></div>
    <div class="contact-form-right"><b><?php echo $entry_email; ?></b><br />
    <input class="q2" type="text" name="email" value="<?php echo $email; ?>" />
    <br />
    <?php if ($error_email) { ?>
    <span class="error"><?php echo $error_email; ?></span>
    <?php } ?>
</div></div></div>
    <b><?php echo $entry_enquiry; ?></b><br />
    <textarea name="enquiry" cols="40" rows="10" style="width: 99%;"><?php echo $enquiry; ?></textarea>
    <?php if ($error_enquiry) { ?>
    <span class="error"><?php echo $error_enquiry; ?></span>
    <?php } ?>
    <br />
    <b class="cap-p"><?php echo $entry_captcha; ?></b><br />
    <input type="text" class="capcha" name="captcha" value="<?php echo $captcha; ?>" />
    <br />
    <div class="buttons">    <img src="index.php?route=information/contact/captcha" alt="" />
    <?php if ($error_captcha) { ?>
    <span class="error"><?php echo $error_captcha; ?></span>
    <?php } ?>
      <div class="right"><a onclick="$('#contact').submit();" class="button"><span><?php echo $button_continue; ?></span></a></div>
    </div>
    </div>

  </form>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>