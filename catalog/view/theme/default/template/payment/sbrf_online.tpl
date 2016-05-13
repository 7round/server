<h2><?php echo $text_instruction; ?></h2>
<div class="content">
  <p><?php echo $text_description; ?></p>
  <p><?php echo $bank; ?></p>
</div>
<div class="buttons">
  <div class="right">
    <input type="button" value="<?php echo $button_confirm; ?>" id="button-confirm" class="button" />
  </div>
</div>
<script type="text/javascript"><!--
$('#button-confirm').bind('click', function() {
	$.ajax({ 
		type: 'get',
		url: 'index.php?route=payment/sbrf_online/confirm',
		success: function() {
			location = '<?php echo $continue; ?>';
		}		
	});
});

$(function(){
	var total_summ = $('#total_total .simplecheckout-cart-total-value').html();
	$('.sbrf_total_summ').html(total_summ);
})

//--></script> 
