<?php
// Heading
$_['heading_title']      = 'Яндекс.YML';

// Text
$_['text_feed']          = 'Каналы продвижения';
$_['text_success']       = 'Настройки модуля обновлены!';

// Entry
$_['entry_status']       = 'Статус:';
$_['entry_data_feed']    = 'Адрес экспорта:<br/><span class="help">Если вы формируете файл экспорта скриптом по запросу Яндекса.</span>';
$_['entry_cron_run']     = 'Команда создания файла экспорта:<br/><span class="help">Может отличаться в зависимости от настроек сервера.</span>';
$_['entry_export_url']   = 'Адрес экспорта:<br/><span class="help">Если вы формируете файл экспорта по планировщику или через shell.</span>';

$_['entry_shopname']     = 'Название магазина:<br/><span class="help">Короткое название магазина (название, которое выводится в списке найденных на Яндекс.Маркете товаров. Не должно содержать более 20 символов).</span>';
$_['entry_company']      = 'Компания:<br/><span class="help">Полное наименование компании, владеющей магазином. Не публикуется, используется для внутренней идентификации.</span>';

$_['entry_datamodel']    = 'Тип описания товарных предложений:<br/><span class="help">Если выбираете vendor.model, то у товаров обязательно должен быть задан производитель.</span>';
$_['entry_delivery_cost'] = 'Стоимость доставки local_delivery_cost:<br/><span class="help">Например <i>300</i>, или <i>0:300|4000:0</i>. Если тэг local_delivery_cost в экспорте не требуется, оставьте поле пустым.</span>';

$_['datamodels']    = array(
	'default'=>'упрощенный',
	'vendor.model'=>'vendor.model',
	/*
	'book'=>'book (книги)',
	'audiobook'=>'audiobook (аудиокниги)',
	'artist.title'=>'artist.title (аудио, видео)',
	'tour'=>'tour (туры)',
	'event-ticket'=>'event-ticket (билеты)'
	*/
);

$_['entry_currency']     = 'Валюта предложений:<br/><span class="help">Яндекс.Маркет принимает предложения в валюте RUR, RUB, BYR, KZT или UAH. Выберите валюту в которой будут передаваться предложения.</span>';
$_['entry_oldprice']     = 'Выгружать тэг oldprice:<br/><span class="help">Актуально для одежды, обуви и аксессуаров</span>';
$_['entry_changeprice']  = 'Выгружать цены с коэффициентом:<br/><span class="help">0.85 означает, что цены в YML на 15% ниже, чем на сайте</span>';

$_['entry_name_field']   = 'Брать тэг name из поля:';
$_['entry_model_field']  = 'Брать тэг model из поля:';
$_['entry_vendorcode_field']  = 'Брать тэг vendorCode из поля:';
$_['entry_typeprefix_field']  = 'Брать тэг typePrefix из поля:';
$_['entry_barcode_field']  = 'Брать тэг barcode из поля:';
$_['entry_export_tags']  = 'Оставлять HTML-тэги в описании:<br/><span class="help">Для prom.ua';

$_['entry_unavailable']  = 'Весь товар &quot;Под заказ&quot;:<br/><span class="help">Если срок доставки товара больше двух дней, то товар должен экспортироваться как товар &quot;под заказ&quot;.</span>';
$_['entry_in_stock']     = 'Статус &quot;В наличии&quot;:<br/><span class="help">При наличии товара на складе <b>или</b> этом статусе, товар будет считаться &quot;в наличии&quot;, иначе - &quot;под заказ&quot;.</span>';
$_['entry_out_of_stock'] = 'Статус &quot;Нет в наличии&quot;:<br/><span class="help">При остатке на складе 0 <b>и</b> этом статусе, товар экспортироваться не будет.</span>';

$_['entry_pickup'] 		 = 'Самовывоз:<br/><span class="help">Можно ли забрать заказанный товар в пункте выдачи заказов.</span>';
$_['entry_sales_notes']  = 'sales_notes:<br/><span class="help">Если вы работаете по предоплате, то укажите: "Необходима предоплата".</span>';
$_['entry_store'] 		 = 'Точка продаж:<br/><span class="help">Есть ли точка продаж, где товар есть в наличии и его можно купить БЕЗ предварительного заказа.</span>';
$_['entry_numpictures']  = 'Кол-во картинок товара:<br/><span class="help">Сколько фотографий товара экспортировать. Яндекс принимает не более десяти.</span>';

$_['tab_categories'] 	 = 'Что экспортировать';
$_['entry_category']     = 'Категории:<br/><span class="help">Отметьте категории из которых надо экспортировать предложения для Яндекс.Маркета.<br />Если ничего не отмечено, то будут выгружаться все категории.</span><br/>Категории Яндекс<br/><span class="help">В правом поле ввода можно указать каким <a href="https://help.yandex.ru/partnermarket/docs/market_categories.xls">категориям Яндекс</a> соответствуют ваши категории, например: "Одежда&nbsp;и&nbsp;обувь/Обувь/Мужская/Кеды"Б.</span>';
$_['entry_manufacturers'] = 'Производители:<br/><span class="help">Отметьте производителей, товары которых надо экспортировать в Яндекс.Маркет.<br />Если ничего не отмечено, то будут выгружаться товары всех производителей.</span>';
$_['entry_blacklist_type'] = 'Следующий список товаров - это...:';
$_['text_blacklist']     = 'Черный список';
$_['text_whitelist']     = 'Белый список';
$_['entry_blacklist']    = 'Не выгружать товары:<br/><span class="help">Товары из этого списка в экспорт не попадут</span>';
$_['entry_whitelist']    = 'Выгружать только эти товары:<br/><span class="help">В экспорт попадут только товары из этого списка</span>';
$_['entry_pricefrom']    = 'Выгружать, если товар дороже:<br/><span class="help">Цена в той валюте, которая выгружается в Маркет</span>';

$_['tab_attributes'] 	 = 'Атрибуты';
$_['tab_attributes_description'] = 'Яндекс рекомендует в экспорте разделять значение атрибута и единицу измерения.
									Для этого <a href="%attr_url%">отредактируйте названия атрибутов</a>, в скобках указывайте единцу измерения
									(если есть единица измерения), а в значении аттрибута единицу измерения не указывайте.
									Например &quot;Вес (кг): 10&quot;, но не &quot;Вес: 10кг&quot;.';
$_['entry_attributes'] 	 = 'Экспортруемые атрибуты:<br/><span class="help">Выбранные атрибуты, если они присутствуют у товара, будут экспортироваться в Яндекс.Маркет (в виде тэгов &lt;param&gt;).</span>';
$_['entry_adult'] 		 = 'Атрибут &quot;товар для взрослых&quot;:<br/><span class="help">При наличии у товара этого атрибута, товар будет экспортироваться как имеющий отношение к удолетворению сексуальных потребностей (с тэгом &lt;adult&gt;).</span>';
$_['entry_manufacturer_warranty'] = 'Атрибут, обозначающий официальную гарантию производителя:<br/><span class="help">При наличии у товара этого атрибута, товар будет экспортироваться с тэгом &lt;manufacturer_warranty&gt;true&lt;/manufacturer_warranty&gt;.</span>';
$_['entry_country_of_origin'] = 'Атрибут, обозначающий страну производства товара:<br/><span class="help">При наличии у товара этого атрибута, товар будет экспортироваться с тэгом &lt;country_of_origin&gt;).</span>';
$_['entry_product_rel'] = 'Выгружать сопутствующие товары в тэге &lt;rel&gt;:<br/><span class="help">Для Яндекс.Маркет</span>';
$_['entry_product_accessory'] = 'Выгружать сопутствующие товары в тэгах &lt;accessory&gt;:<br/><span class="help">Для Wikimart</span>';
$_['entry_attr_vs_description'] = 'Выгружать атрибуты (характеристики) вместо описания:';

$_['tab_tailor'] 		 = 'Опции';
$_['tab_tailor_description'] = 'Для каждого товара у которого можно выбрать цвет и размер, в Яндекс будет выгружаться несколько товарных предложений - для
								каждого сочетания цвет-размер. Опция &quot;цвет&quot; для одежды обязательна. Подробнее смотрите
								<a href="http://help.yandex.ru/partnermarket/?id=1124379">документацию Яндекс.Маркет</a>.';
$_['entry_color_option'] = 'Опции, отвечающие за цвет:<br/><span class="help">Цвет товара будет браться из этих опций. Значение опции должно быть строкой, например &quot;красный&quot;.</span>';
$_['entry_size_option']  = 'Опции, отвечающие за  размер:<br/><span class="help">Размер (рост, возраст, окружность и т.д.) товара будет браться из этих опций.</span>';
$_['entry_size_unit'] 	 = 'Шкала или единица измерения размеров:<br/><span class="help">Размер должен быть числом, кроме размеров международной шкалы: XS, S, M, L, и т.д., для бюстгальтеров: AA, A, B, C и т.д.</span>';

$_['entry_optioned_name'] 	= 'Менять название товара в зависимости от опции:<br/><span class="help">Приписывать значения опций к названию товара в экспорте или нет. Имеет смысл, когда выбраны опции, отвечающие за цвет и размер.</span>';
$_['optioned_name_no'] 		= 'Не менять';
$_['optioned_name_short'] 	= 'Название товара<i>, цвет</i> значение цвета';
$_['optioned_name_long'] 	= 'Название товара<i>, цвет</i> значение цвета <i>, размер</i> значение размера';

// Error
$_['error_permission']   = 'У Вас нет прав для управления этим модулем!';
$_['error_no_color']   = 'Вы указали опцию, отвечающую за размер, но не указали опцию, отвечающую за цвет товара.';
$_['error_no_unit']   = 'Вы указали опцию, отвечающую за размер, но не указали единицу измерения размеров.';
?>