<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  
  <!---Discription starts-->
      <div class="authorbio">
    <?php if(isset($manufacturer_image)) { ?>

    <?php }
    if(isset($manufacturer_description)) {?>
    <div class="authorText">
    <?php echo $manufacturer_description; ?>
    </div>
    <?php } ?>
    <div class="clear"></div>
  </div>
  <?php if ($products) { ?>
  <div class="product-filter">
    <div class="display"><b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display('grid');"><?php echo $text_grid; ?></a></div>
      <div class="sort"><b><?php echo $text_sort; ?></b>
      <select onchange="location = this.value;">
        <?php foreach ($sorts as $sorts) { ?>
        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>  <div class="limit"><b><?php echo $text_limit; ?></b>
      <select onchange="location = this.value;">
        <?php foreach ($limits as $limits) { ?>
        <?php if ($limits['value'] == $limit) { ?>
        <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
<div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
  </div>
  
  <div class="product-list">
    <ul>
        <?php $i=0; foreach ($products as $product) { $i++; ?>
            <?php 
                            if ($i%4==1) {
                                $a='class="first-in-line"';
                            }
                            elseif ($i%4==0) {
                                $a='class="last-in-line"';
                            }
                            else {
                                $a='';
                            }
                        ?>
        <li <?php echo $a?>>
      <?php if ($product['thumb']) { ?>
      <div class="image"><a href="<?php echo $product['href']; ?>"><img id="img_<?php echo $product['product_id']; ?>" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
     
      <?php } ?>
      <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
      <div class="description"><?php echo $product['description']; ?></div>
      <?php if ($product['price']) { ?>
      <div class="price">
        <?php if (!$product['special']) { ?>
        <?php echo $product['price']; ?>
        <?php } else { ?>
       <span class="price-new"><?php echo $product['special']; ?></span> 
	   <?php if ($product['special'] != $product['price']) { ?>
			<span class="price-old"><?php echo $product['price']; ?></span> 
		<?php } ?>
        <?php } ?>
        <?php if ($product['tax']) { ?>
        <br />
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
        <?php } ?>
      </div>
      <?php } ?>
      <div class="rating">
      <?php if ($product['rating']) { ?>
      <img height="13" src="catalog/view/theme/theme120/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
      <?php } ?>
      </div>
      <div class="cart"><a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button"><span><?php echo $button_cart; ?></span></a></div>
      <div class="wishlist"><a class="tip"  onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a><span class="tooltip">В заметки</span></div>
      <div class="compare"><a class="tip2"  onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a><span class="tooltip2">В сравнения</span></div>
    </li>
        <?php } ?>
     </ul>
  </div>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><span><?php echo $button_continue; ?></span></a></div>
  </div>
  <?php }?>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--

function related_height(){
  var related_height = 0;
  $('.product-grid ul li .name').each(function(){
    if($(this).height() > related_height){
      related_height = $(this).height()
    }
  })

  $('.product-grid ul li .name').each(function(){
    $(this).height(related_height)
  });

  var price_height = 0;

  $('.product-grid ul li .price').each(function(){
    if($(this).height() > price_height){
      price_height = $(this).height()
    }
  });

  $('.product-grid ul li .price').each(function(){
    $(this).height(price_height)
  });
}

function display(view) {
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list');
		
		$('.product-list ul li').each(function(index, element) {
			html  = '<div class="right">';
						html += '  <div class="price">' + $(element).find('.price').html() + '</div>';
			html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
			html += '</div>';			
			
			html += '<div class="left">';
			
			var image = $(element).find('.image').html();
			
			if (image != null) { 
				html += '<div class="image">' + image + '</div>';
			}
			
		
					
			html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
			html += '  <div class="description">' + $(element).find('.description').html() + '</div>';
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
				
			html += '</div>';

						
			$(element).html(html);
		});		
		
	$('.display').html('<b><?php echo $text_display; ?></b> <div id="list_b"></div> <a id="grid_a" onclick="display(\'grid\');"><?php echo $text_grid; ?></a>');
		
		$.cookie('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid');
		
		$('.product-grid ul li').each(function(index, element) {
			html = '';
			
			var image = $(element).find('.image').html();
			
			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}
			
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
						
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
						
			html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
			
			$(element).html(html);

      related_height();
      
		});	
					
		$('.display').html('<b><?php echo $text_display; ?></b> <a id="list_a" onclick="display(\'list\');"><?php echo $text_list; ?></a>  <div id="grid_b"></div>');
		
		$.cookie('display', 'grid');

	}
		$('.button ').append("<strong></strong>");  
  $('.button')
	.hover(function(){
		$(this).find('strong')
		.stop().animate({width:'100%', left:'0%', top:'0%',height:'100%'}, {duration:300})
	}, function(){
		$(this).find('strong')
		.stop().animate({width:'0', left:'50%',top:'50%',height:'0'}, {duration:300})
	})
}

view = $.cookie('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script> 

<?php echo $footer; ?>