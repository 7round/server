<form action="<?php echo $action ?>" method="GET" id="payment">
	<input type="hidden" name="pay_for" value="<?php echo $pay_for; ?>"/>
	<input type="hidden" name="price" value="<?php echo $order_amount; ?>"/>
	<input type="hidden" name="currency" value="<?php echo $order_currency; ?>"/>
	<input type="hidden" name="pay_mode" value="<?php echo $pay_mode; ?>"/>
	<input type="hidden" name="f" value="10"/>
	<input type="hidden" name="url_success_enc" value="<?php echo $url_success; ?>"/>
	<input type="hidden" name="md5" value="<?php echo $md5; ?>"/>
</form>
<div class="buttons">
	<div class="right">
		<a onclick="confirm();" class="button"><span><?php echo $button_confirm; ?></span></a>
	</div>
	<script type="text/javascript">
		function confirm() {
			$.ajax({
				type: 'GET',
				url: 'index.php?route=payment/onpay/confirm',
				success: function () {
					$('#payment').submit();
				}
			});
			return false;
		}
	</script>
</div>
