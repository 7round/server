<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>   </title>

<style type="text/css">
body {font-family:Arial, Helvetica, sans-serif;/*font-size:14px;*/}
a {color:#006400;}
/*p {padding: 5px 0px 0px 5px;}*/
h2 {margin-bottom: 38px;}
.vas ul {padding: 0px 10px 0px 15px;}
.vas li {list-style-type:circle;}
h3 {padding:0px 0px 0px 5px;font-size:100%;}
h1 {color:#006400;padding:0px 0px 0px 5px;font-size:120%;}
li {list-style-type: none;padding-bottom:5px;padding: 6px 0px 0px 5px;}
.main {font-size:12px;}
.list {font-size:12px;padding: 6px 15px 0px 5px;}
.main input {font-size:12px;background-color:#CCFFCC;}
.text14 {width: 860px; font-family:"Helvetica", Times, serif;font-size:16px;}
.text14 strong {font-family:"Helvetica", Times, serif;font-size:13px;}
.link {font-size:12px;}
.link a {text-decoration:none;color:#006400;}
.link_u {font-size:12px;}
.link_u a {color:#006400;}
.schet_logo {
  position: absolute;
  top: 20px;
  left: 30px;
  width: 180px;
}
.requisites {
    margin-left: 340px;
    /*margin-top: 60px;*/
}

.requisites p {
    margin: 5px 0;
}

table{
  border-collapse: collapse;
}
td{
  border: #000 1px solid;
  text-align: center;
  padding: 5px;
}

td.name{
  width: 520px;
}

.saller{
  position: absolute;
  top: 120px;
  left: 225px;
}
#shipper{
  position: absolute;
  top: 482px;
  left: 5px;
}
.shipper{
  margin-left: 100px;
}
.order{
  margin: 27px 0 71px 0;
  text-align: center;
}
</style>

<script language="javascript">
// function print1() {
// 	if (confirm ('<?php echo $text_confirm ?>')) {
// 		window.print();
// 	} else {
// 		history.go(-1);
// 	}
// }
</script>
</head>

<body>
<div class="text14">
  <img src="/image/schet_logo.png" class='schet_logo'>
  <h2 class="order">Счёт №<?php echo $order_id; ?> от <?php echo $order_date; ?> г.</h2>
  <div class='requisites'>
    <p class="saller">Продавец: </p>
    <b>Bc. Arkadiy Ruskin</b>
    <p>ОГРН: 28904095</p>
    <p>ИНН: CZ 28904095</p>
    <p>Nad lesním divadlem 1117/10, 142 00 Praha 4, Czech Republic</p>
    <p>р/с: 1200229816/6800</p>
    <p>Банк-получатель: Sberbank CZ, a.s.</p>
    <p>Адрес банка: Na Pankráci 1724/129,14000, Praha 4, CZ</p>
    <p>SWIFT CODE: VBOECZ2X</p>
    <p>IBAN: CZ27 6800 0000 0012 0022 9816</p>
    <p>Корреспондентский банк банка получателя SWIFT: SABRRUMM012</p>
    <p>БИК корреспондентского банка: 044525225</p>
    <p>К/c банка Сбербанк России в Банке России: 30101810400000000225</p>
    <p>К/c в банке Сбербанк России: 30111810700000000827</p>
    <p>ИНН Sberbank CZ: 9909373824</p>
    <p>КПП Sberbank CZ: CZ 775087001</p>
  </div>
  <div class="shipper">
    <p><span id="shipper">Покупатель: </span><?php echo $name ?>, <?php echo $address ?></p>
  </div>
  <table width="860" cellpadding="0" cellspacing="0">
    <tr>
      <td>№<br>п/п</td>
      <td>Наименование товара</td>
      <td>Количество</td>
      <td>Цена за<br>штуку/пару</td>
      <td>Сумма<br>(RUB)</td>
    </tr>
    <?php foreach ($products as $product) { ?>
    <tr>
      <td><?php echo $product['key']; ?></td>
      <td class="name" ><?php echo $product['name']; ?></td>
      <td><?php echo $product['quantity']; ?></td>
      <td><?php echo $product['price']; ?></td>
      <td><?php echo $product['total']; ?></td>
    </tr>
    <?php } ?>
    <tr>
      <td></td>
      <td>Всего:</td>
      <td></td>
      <td></td>
      <td><?php echo $product_total; ?></td>
    </tr>
  </table>
  <br>
  <br>
  <table width="860" cellpadding="0" cellspacing="0">
    <tr>
      <td>№<br>п/п</td>
      <td>Способ доставки</td>
      <td>Рейс</td>
      <td>Цена за<br>доставку</td>
      <td>Сумма<br>(RUB)</td>
    </tr>
    <tr>
      <td>1</td>
      <td class="name"><?php echo $shipping_method; ?></td>
      <td>1</td>
      <td><?php echo $shipping_price; ?></td>
      <td><?php echo $shipping_price; ?></td>
    </tr>
    <tr>
      <td></td>
      <td>Всего:</td>
      <td></td>
      <td></td>
      <td><?php echo $shipping_price; ?></td>
    </tr>
  </table>
  
  <p>Всего к оплате: <b><?php echo $order_total; ?> RUB</b> (<?php echo $order_total_text; ?>)</p>

</div>

<!--Старая квитанция

  <table width="860" bordercolor="#000000" style="border:#000000 1px solid;" cellpadding="0" cellspacing="0">
    <tr>
      <td width="180" valign="top" height="250" align="center" style="border-bottom:#000000 1px solid; border-right:#000000 1px solid;">&nbsp;<strong>Платеж</strong></td>
      <td valign="top" style="border-bottom:#000000 1px solid; border-right:#000000 1px solid;">
      <li>
			<strong>Получатель:  </strong><font style="text-transform: uppercase;"><?php echo $bank ?></font>&nbsp;&nbsp;&nbsp;<br />
		<li>
			<strong>ИНН: </strong><?php echo $inn ?>&nbsp;&nbsp;&nbsp;
			<strong>IBAN: </strong> <?php echo $rs ?>&nbsp;&nbsp;<br />
        <li>
			<strong>Банк - получатель: </strong>Sberbank CZ, a.s.&nbsp;&nbsp;&nbsp;
			<strong>Адрес банка: </strong><?php echo $bankuser ?><br />
        <li>
			<strong>SWIFT: </strong><?php echo $kpp ?>&nbsp;
			<strong>БИК к/банка: </strong><?php echo $bik ?> &nbsp;
			<strong>К/сч.:</strong> <?php echo $ks ?> </strong><br />
        <li><strong>Платеж:</strong> Оплата заказа № <?php echo $order_id ?><br />
        <li><strong>Плательщик:</strong> <?php echo $name ?> <br />
        <li><strong>Адрес плательщика:</strong> <?php echo $address ?><br />
        <li><strong>ИНН плательщика:</strong> _________________&nbsp;&nbsp;&nbsp;&nbsp; <strong>№ л/сч. плательщика:</strong> ________________
        <li><strong>Сумма:</strong> <?php echo $amount ?> руб. &nbsp;&nbsp;&nbsp;&nbsp;<strong>Сумма оплаты услуг банка:</strong> ______ руб. __ коп.<br />
          <br />
          Подпись:________________________        Дата: &quot; __ &quot;&nbsp;_______&nbsp;&nbsp;20&nbsp;&nbsp; г. <br />
          <br />
      </td>
    </tr>
    <tr>
      <td valign="top" height="250" align="center" style="border-bottom:#000000 1px solid; border-right:#000000 1px solid;">&nbsp;<strong>Квитанция</strong></td>
      <td valign="top" style="border-bottom:#000000 1px solid; border-right:#000000 1px solid;">
      <li>
			<strong>Получатель:  </strong><font style="text-transform: uppercase;"><?php echo $bank ?></font>&nbsp;&nbsp;&nbsp;<br />
		<li>
			<strong>ИНН: </strong><?php echo $inn ?>&nbsp;&nbsp;&nbsp;
			<strong>IBAN: </strong> <?php echo $rs ?>&nbsp;&nbsp;<br />
        <li>
			<strong>Банк - получатель: </strong>Sberbank CZ, a.s.&nbsp;&nbsp;&nbsp;
			<strong>Адрес банка: </strong><?php echo $bankuser ?><br />
        <li>
			<strong>SWIFT: </strong><?php echo $kpp ?>&nbsp;
			<strong>БИК к/банка: </strong><?php echo $bik ?> &nbsp;
			<strong>К/сч.:</strong> <?php echo $ks ?> </strong><br />
        <li><strong>Платеж:</strong> Оплата заказа № <?php echo $order_id ?><br />
        <li><strong>Плательщик:</strong> <?php echo $name ?> <br />
        <li><strong>Адрес плательщика:</strong> <?php echo $address ?><br />
        <li><strong>ИНН плательщика:</strong> _________________&nbsp;&nbsp;&nbsp;&nbsp; <strong>№ л/сч. плательщика:</strong> ________________
        <li><strong>Сумма:</strong> <?php echo $amount ?> руб. &nbsp;&nbsp;&nbsp;&nbsp;<strong>Сумма оплаты услуг банка:</strong> ______ руб. __ коп.<br />
          <br />
          Подпись:________________________        Дата: &quot; __ &quot;&nbsp;_______&nbsp;&nbsp;20&nbsp;&nbsp; г. <br />
          <br />
      </td>
    </tr>
  </table>

-->

<script language="javascript">
print1();
</script>
</body>
</html>