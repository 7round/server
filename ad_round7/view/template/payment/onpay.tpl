<?php echo $header; ?>
<div id="content">
	<div class="breadcrumb">
		<?php foreach($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a
				href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
	<?php if($error_warning) { ?>
	<div class="warning"><?php echo $error_warning; ?></div>
	<?php } ?>
	<div class="box">
		<div class="heading">
			<h1><img src="view/image/payment.png" alt=""/> <?php echo $heading_title; ?></h1>

			<div class="buttons"><a onclick="$('#form').submit();"
									class="button"><span><?php echo $button_save; ?></span></a><a
					onclick="location = '<?php echo $cancel; ?>';"
					class="button"><span><?php echo $button_cancel; ?></span></a></div>
		</div>
		<div class="content">
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
				<table class="form">
					<tr>
						<td><span class="required">*</span> <?php echo $entry_merchant; ?></td>
						<td><input type="text" name="onpay_merchant" value="<?php echo $onpay_merchant; ?>"/>
							<?php if($error_merchant) { ?>
								<span class="error"><?php echo $error_merchant; ?></span>
								<?php } ?></td>
					</tr>
					<tr>
						<td><span class="required">*</span> <?php echo $entry_security; ?></td>
						<td><input type="text" name="onpay_security" value="<?php echo $onpay_security; ?>"/>
							<?php if($error_security) { ?>
								<span class="error"><?php echo $error_security; ?></span>
								<?php } ?></td>
					</tr>
					<tr>
						<td><?php echo $entry_callback; ?></td>
						<td><?php echo $callback; ?></td>
					</tr>
					<tr>
						<td><?php echo $entry_onpay_create_order_status_id; ?></td>
						<td><select name="onpay_create_order_status_id">
							<?php foreach($order_statuses as $order_status) { ?>
							<?php if($order_status['order_status_id'] == $onpay_create_order_status_id) { ?>
								<option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
								<?php } else { ?>
								<option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
								<?php } ?>
							<?php } ?>
						</select></td>
					</tr>
					<tr>
						<td><?php echo $entry_order_status; ?></td>
						<td><select name="onpay_order_status_id">
							<?php foreach($order_statuses as $order_status) { ?>
							<?php if($order_status['order_status_id'] == $onpay_order_status_id) { ?>
								<option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
								<?php } else { ?>
								<option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
								<?php } ?>
							<?php } ?>
						</select></td>
					</tr>
					<tr>
						<td><?php echo $entry_geo_zone; ?></td>
						<td><select name="onpay_geo_zone_id">
							<option value="0"><?php echo $text_all_zones; ?></option>
							<?php foreach($geo_zones as $geo_zone) { ?>
							<?php if($geo_zone['geo_zone_id'] == $onpay_geo_zone_id) { ?>
								<option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
								<?php } else { ?>
								<option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
								<?php } ?>
							<?php } ?>
						</select></td>
					</tr>
					<tr>
						<td><?php echo $entry_status; ?></td>
						<td><select name="onpay_status">
							<?php if($onpay_status) { ?>
							<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
							<option value="0"><?php echo $text_disabled; ?></option>
							<?php } else { ?>
							<option value="1"><?php echo $text_enabled; ?></option>
							<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
							<?php } ?>
						</select></td>
					</tr>
					<tr>
						<td><?php echo $entry_sort_order; ?></td>
						<td><input type="text" name="onpay_sort_order" value="<?php echo $onpay_sort_order; ?>" size="1"/></td>
					</tr>
					<tr>
						<td><?php echo $entry_commission; ?></td>
						<td><input type="checkbox" name="onpay_params[price_final]" value="true" <?php if(isset($onpay_params['price_final'])) echo "checked='checked'";?>/></td>
					</tr>
<!--
					<tr>
						<td><?php echo $entry_currency; ?></td>
						<td><select name="onpay_params[ticker]">
							<?php foreach(array("RUR", "USD", "EUR") as $cur) { ?>
							<option value="<?php echo $cur?>" <?php if($cur == $onpay_params['ticker']) echo "selected='selected'"; ?>><?php echo $cur?></option>
							<?php } ?>
						</select>
						</td>
					</tr>
-->
					<tr>
						<td><?php echo $entry_lang ?></td>
						<td><select name="onpay_params[ln]">
							<?php foreach(array('ru', 'en') as $ln) { ?>
							<option value="<?php echo $ln?>" <?php if($ln == $onpay_params['ln']) echo "selected='selected'"; ?>><?php echo $ln?></option>
							<?php } ?>
						</select>
						</td>
					</tr>
					<tr>
						<td><?php echo $entry_form; ?></td>
						<td><select name="onpay_params[f]">
							<?php foreach(array(1, 2, 3, 4, 5, 6, 7) as $f) { ?>
							<option value="<?php echo $f?>" <?php if($f == $onpay_params['f']) echo "selected='selected'"; ?>><?php echo $f?></option>
							<?php } ?>
						</select>
						</td>
					</tr>
					<tr>
						<td><?php echo $entry_param; ?></td>
						<td><input type="text" size="50" name="onpay_param" value="<?php echo $onpay_param; ?>" size="1"/></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	copyright &copy; <a href="mailto:ruslan.shv@gmail.com">Ruslan Shvarev</a>
</div>

<?php echo $footer; ?>