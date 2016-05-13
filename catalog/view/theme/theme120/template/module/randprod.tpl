<div class="">
    <div class="box-heading" style="border: 0;background: none; font-size: 20px"><h1><?php echo $heading_title; ?></h1>
    </div>
    <div class="box-content" style="padding: 10px 0;">
        <div class="product-grid randprod">

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
                <li
                <?php echo $a?>>
                <?php if ($product['thumb']) { ?>
                <div class="image"><a href="<?php echo $product['href']; ?>"><img
                                id="img_<?php echo $product['product_id']; ?>" src="<?php echo $product['thumb']; ?>"
                                title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>"/></a>
                </div>
                <?php } ?>
                <div class="name"><a
                            href="<?php echo $product['href']; ?>"><?php echo utf8_substr(strip_tags(html_entity_decode($product['name'])), 0, 25)."..." ?></a>
                </div>

                <?php if ($product['price']) { ?>
                <div class="price">
                    <?php if (!$product['special']) { ?>
                    <?php echo $product['price']; ?>
                    <?php } else { ?><span class="price-new"><?php echo $product['special']; ?></span>
                    <?php if ($product['special'] != $product['price']) { ?>
                    <span class="price-old"><?php echo $product['price']; ?></span>
                    <?php } ?>
                    <?php } ?>
                    <?php if (array_key_exists('tax',$product) && $text_tax!==null) { ?>
                    <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                    <?php } ?>
                </div>
                <?php } ?>

                <div class="button-cart"><a onclick="addToCart('<?php echo $product['product_id']; ?>');"
                                            class="button"><span><?php echo $button_cart; ?></span></a>
                    <div class="wishlist"><a class="tip" onclick="addToWishList('<?php echo $product['product_id']; ?>');"> <?php echo isset($button_wishlist)?$button_wishlist:''; ?></a><span
                                class="tooltip">В заметки</span></div>
                    <div class="compare"><a class="tip2"
                                            onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo isset($button_compare)?$button_compare:''; ?></a><span
                                class="tooltip2">В сравнения</span></div>
                </div>
                <?php } ?>
            </ul>
        </div>


    </div>
</div>

	