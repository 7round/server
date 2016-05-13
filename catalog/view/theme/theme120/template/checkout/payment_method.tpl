<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php if ($payment_methods) { ?>
<p><?php echo $text_payment_method; ?></p>

<table class="radio">
    <form action="https://secure.payonlinesystem.com/en/payment/1/" method="post">  
  <?php foreach ($payment_methods as $payment_method) { ?>
  <tr class="highlight">
    <td><?php if ($payment_method['code'] == $code || !$code) { ?>
      <?php $code = $payment_method['code']; ?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" checked="checked" />
      <?php } else { ?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" />
      <?php } ?></td>
    <td><label for="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['title']; ?></label></td>
  </tr>
  <?php } ?>
</table>

<br />
<?php } ?>
<!--payonlinesystem starts-->
<!---
<form action="https://secure.payonlinesystem.com/ru/payment/1/" method="post">  
//<input type="hidden" name="MerchantId" value="38888" />  
<input type="hidden" name="OrderId" value="00167" /> 
 <input type="hidden" name="Amount" value="102.45" />  
<input type="hidden" name="Currency" value="RUB" /> 
 <input type="submit" name="submit" value="Перейти к оплате" /> 
 </form>
-->
  <!--payonlinesystem ends-->
   <p>
<b><?php echo $text_comments; ?></b>
<textarea name="comment" rows="8" style="width: 98%;"><?php echo $comment; ?></textarea>
<br />
<br />
<?php if ($text_agree) { ?>
<div class="buttons">
  <div class="right"><?php echo $text_agree; ?>
    <?php if ($agree) { ?>
    <input type="checkbox" name="agree" value="1" checked="checked" />
    <?php } else { ?>
    <input type="checkbox" name="agree" value="1" />
    <?php } ?>
    <div class="mt">
      <a id="button-payment-method" class="button" ><span><?php echo $button_continue; ?></span></a>
    </div>
  </div>
</div>
<?php } else { ?>
<div class="buttons">
  <div class="right">
    <a id="button-payment-method" class="button"><span><?php echo $button_continue; ?></span></a>
  </div>
</div>
<?php } ?>
<script type="text/javascript"><!--
$('.colorbox').colorbox({
	width: 560,
	height: 560
});
//--></script> 