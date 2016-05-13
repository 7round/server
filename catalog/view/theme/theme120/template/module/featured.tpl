<script type="text/javascript">
    (function ($){ $.fn.equalHeights=function(minHeight,maxHeight){tallest=(minHeight)?minHeight:0;this.each(function(){if( $(this).height()>tallest){tallest=$(this).height()}});
        if((maxHeight)&&tallest>maxHeight)tallest=maxHeight;return this.each(function(){ $(this).height(tallest)})}})(jQuery)
    $(window).load(function () {
        if ($(".maxheight-feat").length) {
            $(".maxheight-feat").equalHeights()
        }

    });

</script>
<div class="box featured">
    <div class="box-heading"><?php echo $heading_title; ?></div>
    <div class="box-content">
        <div class="box-product">
            <ul>
                <?php $i=0; foreach ($products as $product) { $i++ ?>
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
                <?php echo $a;?>>
                <script type="text/javascript">
                    $(document).ready(function () {
                        $("a.colorbox<?php echo $i?>").colorbox({
                            rel: 'colorbox',
                            inline: true,
                            html: true,
                            width: '58%',
                            maxWidth: '780px',
                            height: '70%',
                            opacity: 0.6,
                            open: false,
                            returnFocus: false,
                            fixed: false,
                            title: false,
                            current: 'Товар {current} из {total}'
                        });
                    });
                </script>
                <div class="inner-indent">

                    <?php if ($product['thumb']) { ?>
                    <div class="image2">
                        <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>"
                                                                       alt="<?php echo $product['name']; ?>"/></a>
                    </div>
                    <?php } ?>
                    <div class="name maxheight-feat"><a
                                href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                    <div style="display:none;">
                        <div class="quick-view<?php echo $i;?> preview">
                            <div class="wrapper marg">
                                <div class="left">
                                    <?php if ($product['thumb1']) { ?>
                                    <div class="image3">
                                        <a href="<?php echo $product['href']; ?>"><img
                                                    src="<?php echo $product['thumb1']; ?>"
                                                    alt="<?php echo $product['name']; ?>"/></a>

                                    </div>
                                    <?php } ?>
                                </div>
                                <div class="right">
                                    <h2><?php echo $product['name']; ?></h2>
                                    <div class="inf">
                                        <?php if ($product['author']) { ?>
                                        <span class="manufacture"><?php echo $text_manufacturer; ?> <a
                                                    href="<?php echo $product['manufacturers'];?>"><?php echo $product['author']; ?></a></span>
                                        <?php }?>
                                        <?php if ($product['model']) { ?>
                                        <span class="model"><?php echo $text_model." "; ?><?php echo $product['model']; ?></span>
                                        <?php }?>
                                        <div class="clear" style="
    padding: 7px 0;
"></div>
                                        <span class="prod-stock-2"><?php echo $text_availability; ?></span>

                                        <? $check = $product["stock_status"];?>

                                        <?php
  if($check == 'Pre-Order'){

    $stock_status = 'stock_status/custom.png';
    $stock_status_hover = 'stock_status/custom_hover.png';

  }elseif($check == 'In Stock'){

    $stock_status = 'stock_status/in_stock.png';
    $stock_status_hover = 'stock_status/in_stock_hover.png';

  }elseif($check == 'Out Of Stock'){

    $stock_status = 'stock_status/sale.png';
    $stock_status_hover = 'stock_status/sale_hover.png';

  }elseif($check == '2 - 3 Days'){

    $stock_status = 'stock_status/shipping.png';
    $stock_status_hover = 'stock_status/shipping_hover.png';

  }
?>

                                        <!-- <div class="prod-stock prod-stock_<?php echo $product['stock_status']; ?>" style="background-image:url(http://round7.ru/catalog/view/theme/theme120/image/<? if ($check == 'Pre-Order') echo 'pre_order.png'; else if ($check == 'In Stock') echo 'stock_in.png';  else if ($check == 'Our Of Stock') echo 'stock_out.png';?>)"></div> -->


                                        <img alt="stock_status" class="prod-stock"
                                             src="http://round7.ru/catalog/view/theme/theme120/image/<?php echo $stock_status; ?>">

                                        <img alt="stock_status" class="prod-stock-hover close"
                                             src="http://round7.ru/catalog/view/theme/theme120/image/<?php echo $stock_status_hover; ?>">

                                        <script>

                                            $(function () {

                                                $('.prod-stock').hover(function () {

                                                    $('.prod-stock').hide('fast');
                                                    $('.prod-stock-hover').show('slow');

                                                });

                                                $('.prod-stock-hover').mouseleave(function () {

                                                    $('.prod-stock-hover').hide('slow');
                                                    $('.prod-stock').show('slow');

                                                });

                                                var stock_status = '<?php echo $check; ?>';

                                                if (stock_status === 'Out Of Stock') {
                                                    $('.options, .cart').css('display', 'none');
                                                }

                                            });

                                        </script>


                                        <?php if ($product['price']) { ?>
                                        <div class="price">
                                            <span class="text-price"><?php echo $text_price; ?>&nbsp;</span>
                                            <?php if (!$product['special']) { ?>
                                            <?php echo $product['price']; ?>
                                            <?php } else { ?>
                                            <span class="price-new"><?php echo $product['special']; ?></span><span
                                                    class="price-old"><?php echo $product['price']; ?></span>
                                            <?php } ?>

                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="cart">
                                        <a data-id="<?php echo $product['product_id']; ?>;"
                                           class="button addToCart-1"><span><?php echo $button_cart; ?></span></a>

                                        <a href="<?php echo $product['href']; ?>"
                                           class="button details"><span><?php echo $button_details; ?></span></a>
                                    </div>
                                    <div class="extra-button">
                                        <div class="wishlist">
                                            <a class="tip"
                                               onclick="addToWishList('<?php echo $product['product_id']; ?>');"><span
                                                        class="tooltip"><?php echo $button_wishlist; ?></span></a>
                                        </div>
                                        <div class="compare">
                                            <a class="tip2"
                                               onclick="addToCompare('<?php echo $product['product_id']; ?>');"><span
                                                        class="tooltip2"><?php echo $button_compare; ?></span></a>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                    <div class="rating">
                                        <img height="18"
                                             src="catalog/view/theme/theme120/image/stars-<?php echo $product['rating']; ?>.png"
                                             alt="<?php echo $product['reviews']; ?>"/>

                                    </div>
                                </div>
                            </div>
                            <div class="description">
                                <?php echo $product['description'];?>
                            </div>

                        </div>
                    </div>
                    <a href=".quick-view<?php echo $i;?>"
                       class="colorbox<?php echo $i;?> quick-view-button button"><span><?php echo $text_quick;?></span></a>
                    <div class="inner">
                        <div class="f-left">
                            <?php if ($product['price']) { ?>
                            <div class="price">
                                <?php if (!$product['special']) { ?>
                                <?php echo $product['price']; ?>
                                <?php } else { ?>
                                <span class="price-new"><?php echo $product['special']; ?></span><span
                                        class="price-old"><?php echo $product['price']; ?></span>
                                <?php } ?>
                            </div>
                            <?php } ?>
                        </div>
                        <div class="cart">
                            <a data-id="<?php echo $product['product_id']; ?>;"
                               class="button addToCart"><span><?php echo $button_cart; ?></span></a>
                            <a href="<?php echo $product['href']; ?>"
                               class="button details"><span><?php echo $button_details; ?></span></a>
                        </div>
                        <div class="clear"></div>
                        <?php if ($product['rating']) { ?>
                        <div class="rating">
                            <img height="13"
                                 src="catalog/view/theme/theme120/image/stars-<?php echo $product['rating']; ?>.png"
                                 alt="<?php echo $product['reviews']; ?>"/>
                        </div>
                        <?php } ?>

                    </div>

                </div>
                </li>
                <?php } ?>
            </ul>
        </div>
        <div class="clear"></div>
    </div>
</div>
