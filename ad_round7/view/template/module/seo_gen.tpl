<?php echo $header; ?>
<div id="content">
    <div class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <?php if (isset($error_warning)) { ?>
    <div class="warning"><?php echo $error_warning; ?></div>
    <?php } ?>
	<?php if (isset($success)) { ?>
	<div class="success"><?php echo $success; ?></div>
	<?php } ?>
    <div class="box">
        <div class="heading">
            <h1><img src="view/image/module.png" alt=""/> <?php echo $heading_title; ?></h1>
            <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $text_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $text_back; ?></span></a></div>
        </div>
        <div class="content">
			<div id="tabs" class="htabs"><a href="#tab-settings"><?php echo $tab_settings; ?></a><a href="#tab-generate"><?php echo $tab_generate; ?></a><a href="#tab-category"><?php echo $tab_category; ?></a><a href="#tab-product"><?php echo $tab_product; ?></a><a href="#tab-manufacturer"><?php echo $tab_manufacturer; ?></a></div>
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
				<div id="tab-settings">
					<table class="form">
						<tr>
							<td width="20%"><?php echo $text_language; ?></td>
							<td width="30%">
								<select name="current_language" id="current_language" onchange="$('#form').submit();">
									<?php foreach ($languages as $language) {
									echo '<option value="' . $language['language_id'] . '"' . ($language['language_id']==$current_language?' selected="selected"':'') . '>' . $language['name'] . '</option>';
									}?>
								</select>
							</td>
							<td width="50%">
								<span class="tip"><?php echo $text_tip_1; ?></span>
							</td>
						</tr>
						<tr>
							<td><?php echo $text_category_template; ?></td>
							<td>
								<input type="text" size="50" name="category_template" value="<?php echo $category_template; ?>"></input>
							</td>
							<td>
								<span class="tip"><?php echo $text_tip_2; ?></span>
							</td>
						</tr>
						<tr>
							<td><?php echo $text_product_template; ?></td>
							<td>
								<input type="text" size="50" name="product_template" value="<?php echo $product_template; ?>"></input>
							</td>
							<td>
								<span class="tip"><?php echo $text_tip_3; ?></span>
							</td>
						</tr>
						<tr>
							<td><?php echo $text_manufacturer_template; ?></td>
							<td>
								<input type="text" size="50" name="manufacturer_template" value="<?php echo $manufacturer_template; ?>"></input>
							</td>
							<td>
								<span class="tip"><?php echo $text_tip_4; ?></span>
							</td>
						</tr>
						<tr>
							<td><?php echo $text_meta_template; ?></td>
							<td>
								<input type="text" size="50" name="meta_template" value="<?php echo $meta_template; ?>"></input>
							</td>
							<td>
								<span class="tip"><?php echo $text_tip_5; ?></span>
							</td>
						</tr>
						<tr>
							<td><?php echo $text_tags_template; ?></td>
							<td>
								<input type="text" size="50" name="tags_template" value="<?php echo $tags_template; ?>"></input>
							</td>
							<td>
								<span class="tip"><?php echo $text_tip_6; ?></span>
							</td>
						</tr>
						<tr>
							<td><?php echo $text_auto_generate; ?></td>
							<td>
								<select name="auto_generate">
									<option value="0" <?php if ($auto_generate==0) echo 'selected="selected"'; ?>><?php echo $text_option_1; ?></option>
									<option value="1" <?php if ($auto_generate==1) echo 'selected="selected"'; ?>><?php echo $text_option_2; ?></option>
									<option value="2" <?php if ($auto_generate==2) echo 'selected="selected"'; ?>><?php echo $text_option_3; ?></option>
								</select>
							</td>
							<td>
								<span class="tip"><?php echo $text_tip_7; ?></span>
							</td>
						</tr>
						<tr>
							<td><?php echo $text_clear_cache; ?></td>
							<td>
									<input type="radio" id="clear_cache_1" name="clear_cache" value="1" <?php if ($clear_cache==1) echo 'checked="checked"'; ?>><label for="clear_cache_1"><?php echo $text_yes; ?></label></input>
									<input type="radio" id="clear_cache_0" name="clear_cache" value="0" <?php if ($clear_cache==0) echo 'checked="checked"'; ?>><label for="clear_cache_0"><?php echo $text_no; ?></label></input>
								</td>
							<td>
								<span class="tip"><?php echo $text_tip_8; ?></span>
							</td>
						</tr>
					</table>
				</div>
                <div id="tab-generate">
					<table class="form">
						<tr>
							<td><?php echo $text_categories; ?></td>
							<td>
								<button type="submit" name="categories" value="categories"><?php echo $button_generate_all;?></button>
								<button type="submit" name="categories_clear" value="categories_clear"><?php echo $button_generate_clear?></button>
							</td>
						</tr>
						<tr>
							<td><?php echo $text_products; ?></td>
							<td>
								<button type="submit" name="products" value="products"><?php echo $button_generate_all;?></button>
								<button type="submit" name="products_clear" value="products_clear"><?php echo $button_generate_clear?></button>
							</td>
						</tr>
						<tr>
							<td><?php echo $text_manufacturers; ?></td>
							<td>
								<button type="submit" name="manufacturers" value="manufacturers"><?php echo $button_generate_all;?></button>
								<button type="submit" name="manufacturers_clear" value="manufacturers_clear"><?php echo $button_generate_clear?></button>
							</td>
						</tr>
						<tr>
							<td><?php echo $text_meta;?></td>
							<td>
								<button type="submit" name="meta_keywords" value="meta_keywords"><?php echo $button_generate_all;?></button>
							</td>
						</tr>
						<tr>
							<td><?php echo $text_tags;?></td>
							<td>
								<button type="submit" name="tags" value="tags"><?php echo $button_generate_all;?></button>
							</td>
						</tr>
					</table>
				</div>
				<div id="tab-category">
					<table class="list">
						<thead>
						  <tr>
							<td width="40%" class="left"><?php echo $column_category_name; ?></td>
							<td width="40%" class="left"><?php echo $column_seo_url; ?></td>
							<td width="20%" class="right"><?php echo $column_action; ?></td>
						  </tr>
						</thead>
						<tbody>
						<?php if ($categories) { ?>
							<?php foreach ($categories as $category) { ?>
							<tr>
								<td class="left"><?php echo $category['name']; ?></td>
								<td class="left category_edit" category_id="<?php echo $category['category_id']; ?>"><span><?php echo $category['seo_url']; ?></span><div class="seo_url_edit"></div></td>
								<td class="right"><?php foreach ($category['action'] as $action) { ?>
								[ <a href="#" class="<?php echo $action['class']; ?>" category_id="<?php echo $category['category_id']; ?>"><?php echo $action['text']; ?></a> ]
								<?php } ?></td>
							</tr>
							<?php } ?>
						<?php } else { ?>
						<tr>
						  <td class="center" colspan="3"><?php echo $text_no_results; ?></td>
						</tr>
						<?php } ?>
						</tbody>
					</table>
					<div class="pagination"><?php echo $pagination_category; ?></div>
				</div>
				<div id="tab-product">
					<table class="list">
						<thead>
						  <tr>
							<td width="15%" class="center"><?php echo $column_image; ?></td>
							<td width="35%" class="left"><?php echo $column_product_name; ?></td>
							<td width="35%" class="left"><?php echo $column_seo_url; ?></td>
							<td width="15%" class="right"><?php echo $column_action; ?></td>
						  </tr>
						</thead>
						<tbody>
						<?php if ($products) { ?>
							<?php foreach ($products as $product) { ?>
							<tr>
								<td class="center"><img src="<?php echo $product['image']; ?>" alt="<?php echo $product['name']; ?>" style="padding: 1px; border: 1px solid #DDDDDD;" /></td>
								<td class="left"><?php echo $product['name']; ?></td>
								<td class="left product_edit" product_id="<?php echo $product['product_id']; ?>"><span><?php echo $product['seo_url']; ?></span><div class="seo_url_edit"></div></td>
								<td class="right"><?php foreach ($product['action'] as $action) { ?>
								[ <a href="#" class="<?php echo $action['class']; ?>" product_id="<?php echo $product['product_id']; ?>"><?php echo $action['text']; ?></a> ]
								<?php } ?></td>
							</tr>
							<?php } ?>
						<?php } else { ?>
						<tr>
						  <td class="center" colspan="4"><?php echo $text_no_results; ?></td>
						</tr>
						<?php } ?>
						</tbody>
					</table>
					<div class="pagination"><?php echo $pagination_product; ?></div>
				</div>
				<div id="tab-manufacturer">
					<table class="list">
						<thead>
						  <tr>
							<td width="40%" class="left"><?php echo $column_manufacturer_name; ?></td>
							<td width="40%" class="left"><?php echo $column_seo_url; ?></td>
							<td width="20%" class="right"><?php echo $column_action; ?></td>
						  </tr>
						</thead>
						<tbody>
						<?php if ($manufacturers) { ?>
							<?php foreach ($manufacturers as $manufacturer) { ?>
							<tr>
								<td class="left"><?php echo $manufacturer['name']; ?></td>
								<td class="left manufacturer_edit" manufacturer_id="<?php echo $manufacturer['manufacturer_id']; ?>"><span><?php echo $manufacturer['seo_url']; ?></span><div class="seo_url_edit"></div></td>
								<td class="right"><?php foreach ($manufacturer['action'] as $action) { ?>
								[ <a href="#" class="<?php echo $action['class']; ?>" manufacturer_id="<?php echo $manufacturer['manufacturer_id']; ?>"><?php echo $action['text']; ?></a> ]
								<?php } ?></td>
							</tr>
							<?php } ?>
						<?php } else { ?>
						<tr>
						  <td class="center" colspan="3"><?php echo $text_no_results; ?></td>
						</tr>
						<?php } ?>
						</tbody>
					</table>
					<div class="pagination"><?php echo $pagination_manufacturer; ?></div>
				</div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript"><!--
$('#tabs a').tabs(); 

$(document).ready(function() {
<?php if ( isset($tab) && ($tab) ) { ?>
	$('a[href=\'#tab-<?php echo $tab; ?>\']').click();
<?php } ?>

$('.category_edit').live('click', function() {
	$('.category_edit_active > input').remove();
	$('.category_edit_active > a').remove();
	$('.category_edit_active > span').css('display','inline');
	$('.category_edit_active > div').css('display','block');
	$('.category_edit_active').addClass('category_edit');
	$('.category_edit_active').removeClass('category_edit_active');
	
	var this_var = $(this);
	
	var category_id = this_var.attr('category_id');
	var category_name = this_var.find("span").html();
	
	this_var.find("span").css('display','none');
	this_var.find("div").css('display','none');
	
	this_var.append('<input type="text" value="'+ category_name +'"></input>');
	this_var.append('<a href="#" class="seo_url_no category_no"></a>');
	this_var.append('<a href="#" class="seo_url_yes category_yes" category_id="'+ category_id +'"></a>');
	
	this_var.removeClass('category_edit');
	this_var.addClass('category_edit_active');
});

$('.category_no').live('click', function() {
	$('.category_edit_active > input').remove();
	$('.category_edit_active > a').remove();
	$('.category_edit_active > span').css('display','inline');
	$('.category_edit_active > div').css('display','block');
	$('.category_edit_active').addClass('category_edit');
	$('.category_edit_active').removeClass('category_edit_active');

	return false;
});

$('.category_yes').live('click', function() {
	$.ajax({
		url: 'index.php?route=module/seo_gen/category_edit&token=<?php echo $token; ?>',
		type: 'post',
		data: 'category_id=' + encodeURIComponent($(this).attr('category_id')) + '&category_name=' + encodeURIComponent($(this).parent().find("input").val()),
		success: function(html) {
			$('.category_edit_active > input').remove();
			$('.category_edit_active > a').remove();
			$('.category_edit_active > span').html(html);
			$('.category_edit_active > span').css('display','inline');
			$('.category_edit_active > div').css('display','block');
			$('.category_edit_active').addClass('category_edit');
			$('.category_edit_active').removeClass('category_edit_active');
		}
	});
	
	return false;
});

$('.category_generate').live('click', function() {
	$('.category_edit_active > input').remove();
	$('.category_edit_active > a').remove();
	$('.category_edit_active > span').css('display','inline');
	$('.category_edit_active > div').css('display','block');
	$('.category_edit_active').addClass('category_edit');
	$('.category_edit_active').removeClass('category_edit_active');

	var category_id = $(this).attr('category_id');
	
	$.ajax({
		url: 'index.php?route=module/seo_gen/category_generate&token=<?php echo $token; ?>',
		type: 'post',
		data: 'category_id=' + encodeURIComponent(category_id) + '&template=' + encodeURIComponent($('input[name=\'category_template\']').val()) + '&language=' + encodeURIComponent($('#current_language').val()),
		success: function(html) {
			$('td[category_id=\''+ category_id +'\']>span').html(html);
		}
	});
	
	return false;
});

$('.product_edit').live('click', function() {
	$('.product_edit_active > input').remove();
	$('.product_edit_active > a').remove();
	$('.product_edit_active > span').css('display','inline');
	$('.product_edit_active > div').css('display','block');
	$('.product_edit_active').addClass('product_edit');
	$('.product_edit_active').removeClass('product_edit_active');
	
	var this_var = $(this);
	
	var product_id = this_var.attr('product_id');
	var product_name = this_var.find("span").html();
	
	this_var.find("span").css('display','none');
	this_var.find("div").css('display','none');
	
	this_var.append('<input type="text" value="'+ product_name +'"></input>');
	this_var.append('<a href="#" class="seo_url_no product_no"></a>');
	this_var.append('<a href="#" class="seo_url_yes product_yes" product_id="'+ product_id +'"></a>');
	
	this_var.removeClass('product_edit');
	this_var.addClass('product_edit_active');
});

$('.product_no').live('click', function() {
	$('.product_edit_active > input').remove();
	$('.product_edit_active > a').remove();
	$('.product_edit_active > span').css('display','inline');
	$('.product_edit_active > div').css('display','block');
	$('.product_edit_active').addClass('product_edit');
	$('.product_edit_active').removeClass('product_edit_active');

	return false;
});

$('.product_yes').live('click', function() {
	$.ajax({
		url: 'index.php?route=module/seo_gen/product_edit&token=<?php echo $token; ?>',
		type: 'post',
		data: 'product_id=' + encodeURIComponent($(this).attr('product_id')) + '&product_name=' + encodeURIComponent($(this).parent().find("input").val()),
		success: function(html) {
			$('.product_edit_active > input').remove();
			$('.product_edit_active > a').remove();
			$('.product_edit_active > span').html(html);
			$('.product_edit_active > span').css('display','inline');
			$('.product_edit_active > div').css('display','block');
			$('.product_edit_active').addClass('product_edit');
			$('.product_edit_active').removeClass('product_edit_active');
		}
	});
	
	return false;
});

$('.product_generate').live('click', function() {
	$('.product_edit_active > input').remove();
	$('.product_edit_active > a').remove();
	$('.product_edit_active > span').css('display','inline');
	$('.product_edit_active > div').css('display','block');
	$('.product_edit_active').addClass('product_edit');
	$('.product_edit_active').removeClass('product_edit_active');

	var product_id = $(this).attr('product_id');
	
	$.ajax({
		url: 'index.php?route=module/seo_gen/product_generate&token=<?php echo $token; ?>',
		type: 'post',
		data: 'product_id=' + encodeURIComponent(product_id) + '&template=' + encodeURIComponent($('input[name=\'product_template\']').val()) + '&language=' + encodeURIComponent($('#current_language').val()),
		success: function(html) {
			$('td[product_id=\''+ product_id +'\']>span').html(html);
		}
	});
	
	return false;
});

$('.manufacturer_edit').live('click', function() {
	$('.manufacturer_edit_active > input').remove();
	$('.manufacturer_edit_active > a').remove();
	$('.manufacturer_edit_active > span').css('display','inline');
	$('.manufacturer_edit_active > div').css('display','block');
	$('.manufacturer_edit_active').addClass('manufacturer_edit');
	$('.manufacturer_edit_active').removeClass('manufacturer_edit_active');
	
	var this_var = $(this);
	
	var manufacturer_id = this_var.attr('manufacturer_id');
	var manufacturer_name = this_var.find("span").html();
	
	this_var.find("span").css('display','none');
	this_var.find("div").css('display','none');
	
	this_var.append('<input type="text" value="'+ manufacturer_name +'"></input>');
	this_var.append('<a href="#" class="seo_url_no manufacturer_no"></a>');
	this_var.append('<a href="#" class="seo_url_yes manufacturer_yes" manufacturer_id="'+ manufacturer_id +'"></a>');
	
	this_var.removeClass('manufacturer_edit');
	this_var.addClass('manufacturer_edit_active');
});

$('.manufacturer_no').live('click', function() {
	$('.manufacturer_edit_active > input').remove();
	$('.manufacturer_edit_active > a').remove();
	$('.manufacturer_edit_active > span').css('display','inline');
	$('.manufacturer_edit_active > div').css('display','block');
	$('.manufacturer_edit_active').addClass('manufacturer_edit');
	$('.manufacturer_edit_active').removeClass('manufacturer_edit_active');

	return false;
});

$('.manufacturer_yes').live('click', function() {
	$.ajax({
		url: 'index.php?route=module/seo_gen/manufacturer_edit&token=<?php echo $token; ?>',
		type: 'post',
		data: 'manufacturer_id=' + encodeURIComponent($(this).attr('manufacturer_id')) + '&manufacturer_name=' + encodeURIComponent($(this).parent().find("input").val()),
		success: function(html) {
			$('.manufacturer_edit_active > input').remove();
			$('.manufacturer_edit_active > a').remove();
			$('.manufacturer_edit_active > span').html(html);
			$('.manufacturer_edit_active > span').css('display','inline');
			$('.manufacturer_edit_active > div').css('display','block');
			$('.manufacturer_edit_active').addClass('manufacturer_edit');
			$('.manufacturer_edit_active').removeClass('manufacturer_edit_active');
		}
	});
	
	return false;
});

$('.manufacturer_generate').live('click', function() {
	$('.manufacturer_edit_active > input').remove();
	$('.manufacturer_edit_active > a').remove();
	$('.manufacturer_edit_active > span').css('display','inline');
	$('.manufacturer_edit_active > div').css('display','block');
	$('.manufacturer_edit_active').addClass('manufacturer_edit');
	$('.manufacturer_edit_active').removeClass('manufacturer_edit_active');

	var manufacturer_id = $(this).attr('manufacturer_id');
	
	$.ajax({
		url: 'index.php?route=module/seo_gen/manufacturer_generate&token=<?php echo $token; ?>',
		type: 'post',
		data: 'manufacturer_id=' + encodeURIComponent(manufacturer_id) + '&template=' + encodeURIComponent($('input[name=\'manufacturer_template\']').val()) + '&language=' + encodeURIComponent($('#current_language').val()),
		success: function(html) {
			$('td[manufacturer_id=\''+ manufacturer_id +'\']>span').html(html);
		}
	});
	
	return false;
});

});

//--></script> 
<?php echo $footer; ?>