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
        <?php } else { ?><span class="price-new"><?php echo $product['special']; ?></span>
        <?php if ($product['special'] != $product['price']) { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> 
        <?php } ?> 
        <?php } ?>
        <?php if ($product['tax']) { ?>
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