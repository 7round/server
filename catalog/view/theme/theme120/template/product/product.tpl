<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
    <div class="breadcrumb">
        <?php $k=1; ?>
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?>
        <?php if ($k++ < count($breadcrumbs)) {?>
        <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } else { ?>
        <span class="last"><?php echo $breadcrumb['text']; ?></span>
        <?php } ?>
        <?php } ?>
    </div>

    <div class="product-info">
        <div class="wrapper indent-bot">
            <?php if ($thumb || $images) { ?>
            <div class="fleft left spacing">
                <?php foreach ($images as $image) { ?>
                <div class="zoom-top"><a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"
                                         data-gal="prettyPhoto[gallery]"><img src="<?php echo $image['thumb']; ?>"
                                                                              title="<?php echo $heading_title; ?>"
                                                                              alt="<?php echo $heading_title; ?>"/></a>
                </div>
                <?php } ?>
                <?php if ($thumb) { ?>

                <div class="image">
                    <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class='cloud-zoom' id='zoom1'
                       rel="position: 'right'">
                        <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>"
                             alt="<?php echo $heading_title; ?>"/>
                    </a>
                    <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>">
                        <img id="image" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>"
                             alt="<?php echo $heading_title; ?>"/>
                    </a>
                </div>
                <?php } ?>
                <?php $cl1=''; if ($images) {
          	if (count($images)>3) {
                $cl1='image-caroucel';
                }
                else {
                $cl1='';
                }
                ?>
                <div class="image-additional <?php echo $cl1;?>">
                    <ul>

                        <?php $u=0; foreach ($images as $image) {
                    $u++;
                    $cl='';
                    if ( count($images)<4 and $u==3) {
                        $cl='class="last"';
                    }
                    else {
                        $cl='';
                    }
                    
                
                 ?>
                        <li
                        <?php echo $cl;?>>
                        <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"
                           class="cloud-zoom-gallery"
                           rel="useZoom: 'zoom1', smallImage: '<?php echo $image['thumb']; ?>' "><img
                                    src="<?php echo $image['small']; ?>" title="<?php echo $heading_title; ?>"
                                    alt="<?php echo $heading_title; ?>"/></a>
                        </li>
                        <?php } ?>
                    </ul>
                </div>
                <?php } ?>


            </div>
            <?php } ?>
            <div class="extra-wrap">
                <h1><?php echo $heading_title; ?></h1>
                <div class="description">
                    <?php if ($manufacturer) { ?>
                    <span><?php echo $text_manufacturer; ?></span> <a
                            href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a>
                    <div id="mlogo" style="float: right; position: relative;top: -20px; "><img
                                src="<?php echo $mimage; ?>" title="<?php echo $manufacturer; ?>"/></div>
                    <br/>
                    <?php } ?>
                    <span><?php echo $text_model; ?></span> <?php echo $model; ?><br/>
                    <?php if ($reward) { ?>
                    <span><?php echo $text_reward; ?></span> <?php echo $reward; ?><br/>
                    <?php } ?>

                    <!-- noindex -->
                    <? $check = $product_info["stock_status"]; ?>

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

                    <div class="padd-avalib">
                        <div class="extra-wrap">
                            <span class="prod-stock-2"><?php echo $text_stock; ?></span>

                            <!-- <div class="prod-stock prod-stock_<?php echo $product_info["stock_status"]; ?>" style="background-image:url(http://round7.ru/catalog/view/theme/theme120/image/<?php echo $stock_status; ?>)"><?php //echo $stock; ?></div> -->

                            <img class="prod-stock prod-stock_<?php echo $product_info[" stock_status"]; ?>"
                            src="http://round7.ru/catalog/view/theme/theme120/image/<?php echo $stock_status; ?>">

                            <img class="prod-stock-hover close"
                                 src="http://round7.ru/catalog/view/theme/theme120/image/<?php echo $stock_status_hover; ?>">

                        </div>
                    </div>

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

                        });

                    </script>

                    <!--/ noindex -->

                    <?php if ($price) { ?>
                    <div class="price">
                        <span class="text-price"><?php echo $text_price; ?></span>
                        <?php if (!$special) { ?>
                        <?php echo $price; ?>
                        <?php } else { ?>
                        <span class="price-new"><?php echo $special; ?></span>
                        <?php if ($special != $price) { ?>
                        <span class="price-old"><?php echo $price; ?></span>
                        <?php } ?>
                        <?php } ?>
                        <?php if ($tax) { ?>
                        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br/>
                        <?php } ?>
                        <?php if ($points) { ?>
                        <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span>
                        <?php } ?>
                        <?php if ($discounts) { ?>

                        <div class="discount">
                            <?php foreach ($discounts as $discount) { ?>
                            <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br/>
                            <?php } ?>
                        </div>
                        <?php } ?>
                    </div>
                    <?php } ?>
                    <?php if ($options) { ?>
                    <!-- noindex -->
                    <div class="options">
                        <?php /*
        <h2><?php echo $text_option; ?></h2>
                        */ ?>
                        <br/>
                        <?php foreach ($options as $option) { ?>
                        <?php if ($option['type'] == 'select') { ?>
                        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                            <?php if ($option['required']) { ?>
                            <span class="required">*</span>
                            <?php } ?>
                            <?php echo $option['name']; ?>:<br/>
                            <select name="option[<?php echo $option['product_option_id']; ?>]">
                                <option value=""><?php echo $text_select; ?></option>
                                <?php foreach ($option['option_value'] as $option_value) { ?>
                                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                    <?php if ($option_value['price']) { ?>
                                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                    <?php } ?>
                                </option>
                                <?php } ?>
                            </select>
                        </div>
                        <br/>
                        <?php } ?>
                        <?php if ($option['type'] == 'radio') { ?>
                        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                            <?php if ($option['required']) { ?>
                            <span class="required">*</span>
                            <?php } ?>
                            <b><?php echo $option['name']; ?>:</b><br/>
                            <?php foreach ($option['option_value'] as $option_value) { ?>
                            <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]"
                                   value="<?php echo $option_value['product_option_value_id']; ?>"
                                   id="option-value-<?php echo $option_value['product_option_value_id']; ?>"/>
                            <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                <?php if ($option_value['price']) { ?>
                                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                <?php } ?>
                            </label>
                            <br/>
                            <?php } ?>
                        </div>
                        <br/>
                        <?php } ?>
                        <?php if ($option['type'] == 'checkbox') { ?>
                        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                            <?php if ($option['required']) { ?>
                            <span class="required">*</span>
                            <?php } ?>
                            <b><?php echo $option['name']; ?>:</b><br/>
                            <?php foreach ($option['option_value'] as $option_value) { ?>
                            <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]"
                                   value="<?php echo $option_value['product_option_value_id']; ?>"
                                   id="option-value-<?php echo $option_value['product_option_value_id']; ?>"/>
                            <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                <?php if ($option_value['price']) { ?>
                                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                <?php } ?>
                            </label>
                            <br/>
                            <?php } ?>
                        </div>
                        <br/>
                        <?php } ?>
                        <?php if ($option['type'] == 'image') { ?>
                        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                            <?php if ($option['required']) { ?>
                            <span class="required">*</span>
                            <?php } ?>
                            <b><?php echo $option['name']; ?>:</b><br/>
                            <table class="option-image">
                                <?php foreach ($option['option_value'] as $option_value) { ?>
                                <tr>
                                    <td style="width: 1px;"><input type="radio"
                                                                   name="option[<?php echo $option['product_option_id']; ?>]"
                                                                   value="<?php echo $option_value['product_option_value_id']; ?>"
                                                                   id="option-value-<?php echo $option_value['product_option_value_id']; ?>"/>
                                    </td>
                                    <td>
                                        <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img
                                                    src="<?php echo $option_value['image']; ?>"
                                                    alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>"/></label>
                                    </td>
                                    <td>
                                        <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                            <?php if ($option_value['price']) { ?>
                                            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>
                                            )
                                            <?php } ?>
                                        </label></td>
                                </tr>
                                <?php } ?>
                            </table>
                        </div>
                        <br/>
                        <?php } ?>
                        <?php if ($option['type'] == 'text') { ?>
                        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                            <?php if ($option['required']) { ?>
                            <span class="required">*</span>
                            <?php } ?>
                            <b><?php echo $option['name']; ?>:</b><br/>
                            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]"
                                   value="<?php echo $option['option_value']; ?>"/>
                        </div>
                        <br/>
                        <?php } ?>
                        <?php if ($option['type'] == 'textarea') { ?>
                        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                            <?php if ($option['required']) { ?>
                            <span class="required">*</span>
                            <?php } ?>
                            <b><?php echo $option['name']; ?>:</b><br/>
                            <textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40"
                                      rows="5"><?php echo $option['option_value']; ?></textarea>
                        </div>
                        <br/>
                        <?php } ?>
                        <?php if ($option['type'] == 'file') { ?>
                        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                            <?php if ($option['required']) { ?>
                            <span class="required">*</span>
                            <?php } ?>
                            <b><?php echo $option['name']; ?>:</b><br/>
                            <a id="button-option-<?php echo $option['product_option_id']; ?>"
                               class="button"><?php echo $button_upload; ?></a>
                            <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value=""/>
                        </div>
                        <br/>
                        <?php } ?>
                        <?php if ($option['type'] == 'date') { ?>
                        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                            <?php if ($option['required']) { ?>
                            <span class="required">*</span>
                            <?php } ?>
                            <b><?php echo $option['name']; ?>:</b><br/>
                            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]"
                                   value="<?php echo $option['option_value']; ?>" class="date"/>
                        </div>
                        <br/>
                        <?php } ?>
                        <?php if ($option['type'] == 'datetime') { ?>
                        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                            <?php if ($option['required']) { ?>
                            <span class="required">*</span>
                            <?php } ?>
                            <b><?php echo $option['name']; ?>:</b><br/>
                            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]"
                                   value="<?php echo $option['option_value']; ?>" class="datetime"/>
                        </div>
                        <br/>
                        <?php } ?>
                        <?php if ($option['type'] == 'time') { ?>
                        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                            <?php if ($option['required']) { ?>
                            <span class="required">*</span>
                            <?php } ?>
                            <b><?php echo $option['name']; ?>:</b><br/>
                            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]"
                                   value="<?php echo $option['option_value']; ?>" class="time"/>
                        </div>
                        <br/>
                        <?php } ?>
                        <?php } ?>
                    </div>
                    <!--/ noindex -->
                    <?php } ?>
                    <div class="cart">
                        <div class="prod-row">
                            <div class="cart-top">
                                <div class="cart-top-padd">
                                    <!-- noindex -->
                                    <label><?php echo $text_qty; ?></label>
                                    <input type="text" name="quantity" size="2" value="<?php echo $minimum; ?>"/>
                                    <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>"/>
                                    <!--/ noindex -->
                                </div>
                                <a id="button-cart" class="button-prod"><?php echo $button_cart; ?></a>
                            </div>
                        </div>
                        <!-- noindex -->
                        <div class="extra-button">
                            <div class="wishlist"><a class="tip" onclick="addToWishList('<?php echo $product_id; ?>');"
                                                     title="<?php echo $button_wishlist; ?>"><?php echo $button_wishlist; ?></a>
                            </div>
                            <!--/ noindex -->
                            <div class="compare"><a class="tip2" onclick="addToCompare('<?php echo $product_id; ?>');"
                                                    title="<?php echo $button_compare; ?>"><?php echo $button_compare; ?></a>
                            </div>
                        </div>
                        <?php if ($minimum > 1) { ?>
                        <div class="minimum"><?php echo $text_minimum; ?></div>
                        <?php } ?>
                    </div>
                    <?php if ($review_status) { ?>
                    <div class="review">
                        <!-- noindex -->
                        <div><img src="catalog/view/theme/theme120/image/stars-<?php echo $rating; ?>.png"
                                  alt="<?php echo $reviews; ?>"/>&nbsp;&nbsp;
                            <div class="btn-rew"><a
                                        onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
                                        onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $text_write; ?></a>
                            </div>
                        </div>
                        <!--<div class="share"><!-- AddThis Button BEGIN -->
                        <!-- AddThis Button BEGIN -->
                        <!--<div class="addthis_toolbox addthis_default_style ">
                        <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
                        <a class="addthis_button_tweet"></a>
                        <a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
                        <a class="addthis_counter addthis_pill_style"></a>
                        </div>
                        <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=ra-4f419f410efe76d3"></script>
                        <!-- AddThis Button END -->
                        <!--</div>
                      <!--/ noindex -->

                        <!-- Put this div tag to the place, where the Like block will be -->
                        <div>
			<span class="vk_widgets">
				<script type="text/javascript">

                    var title = "<?php echo $heading_title; ?>";
                    var description = '<?php $arr = explode("</p", $description); echo substr(trim(strip_tags(str_replace(array("&nbsp;", "<br />", "\r", "\n", "\r\n"), " ", $arr[0]))), 0, 500); ?>';
                    var img = '<?php echo $images[0]['
                    thumb
                    ']; ?>';
                    console.log(img);
                    document.write(VK.Share.button({url: encodeURI(location.href)+'/?title='+encodeURI(title)+'&description='+encodeURI(description)+'...&image='+encodeURI(img)+'&noparse=true'
                            },
                            {
                                type: 'round',
                                text: 'Рассказать'
                            }));

                    $('document').ready(function () {
                        VK.Widgets.Like("vk_like", {
                            type: "full",
                            height: 21,
                            width: 200,
                            pageTitle: title,
                            pageDescription: description,
                            pageUrl: location.href,
                            pageImage: img,
                            text: description
                        }, 120);
                    })
                </script>
			</span>
			<span id="vk_like">
				<script type="text/javascript">

                </script>
			</span>
                        </div>


                    </div>
                    <?php } ?>
                </div>
            </div>
        </div>
        <div class="wrapper mb-1">
            <div id="tabs" class="htabs"><a href="#tab-description"><?php echo $tab_description; ?></a>
                <?php if ($attribute_groups) { ?>
                <a href="#tab-attribute"><?php echo $tab_attribute; ?></a>
                <?php } ?>
                <?php if ($review_status) { ?>
                <!-- noindex -->
                <a href="#tab-review"><?php echo $tab_review; ?></a>
                <!--/ noindex -->
                <?php } ?>
                <?php if ($tags) { ?>
                <!-- noindex -->
                <a href="#tab-related"><?php echo str_replace(':','',$text_tags); ?></a>
                <!--/ noindex -->
                <?php } ?>
            </div>
        </div>
        <div class="wrapper">
            <div id="tab-description" class="tab-content"><?php echo $description; ?></div>
            <?php if ($attribute_groups) { ?>
            <div id="tab-attribute" class="tab-content">
                <table class="attribute">
                    <?php foreach ($attribute_groups as $attribute_group) { ?>
                    <thead>
                    <tr>
                        <td colspan="2"><?php echo $attribute_group['name']; ?></td>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                    <tr>
                        <td><?php echo $attribute['name']; ?></td>
                        <td><?php echo $attribute['text']; ?></td>
                    </tr>
                    <?php } ?>
                    </tbody>
                    <?php } ?>
                </table>
            </div>
            <?php } ?>
            <?php if ($review_status) { ?>
            <div id="tab-review" class="tab-content">
                <div id="review"></div>
                <span id="review-title" style="font-size:18px;"><?php echo $text_write; ?></span><br/>
                <b><?php echo $entry_name; ?></b><br/>
                <input type="text" name="a_name" value=""/>
                <br/>
                <br/>
                <b><?php echo $entry_review; ?></b>
                <textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
                <span style="font-size: 11px;"><?php echo $text_note; ?></span><br/>
                <br/>
                <b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
                <input type="radio" name="rating" value="1"/>
                &nbsp;
                <input type="radio" name="rating" value="2"/>
                &nbsp;
                <input type="radio" name="rating" value="3"/>
                &nbsp;
                <input type="radio" name="rating" value="4"/>
                &nbsp;
                <input type="radio" name="rating" value="5"/>
                &nbsp; <span><?php echo $entry_good; ?></span><br/>
                <br/>
                <b><?php echo $entry_captcha; ?></b><br/>
                <input type="text" name="captcha" value=""/>
                <br/>
                <img src="index.php?route=product/product/captcha" alt="" id="captcha"/><br/>
                <br/>
                <div class="buttons">
                    <div class="right"><a id="button-review" class="button"><span><?php echo $button_continue; ?></span></a>
                    </div>
                </div>
            </div>
            <?php } ?>
            <?php if ($tags) { ?>
            <div id="tab-related" class="tab-content">
                <div class="tags"><b><?php echo $text_tags; ?></b>
                    <?php for ($i = 0; $i < count($tags); $i++) { ?>
                    <?php if ($i < (count($tags) - 1)) { ?>
                    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
                    <?php } else { ?>
                    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
                    <?php } ?>
                    <?php } ?>
                </div>
            </div>
            <?php } ?>
        </div>

    </div>
    <?php if ($products) {
    $carous='';
      if (count($products)>4)
    {
    $carous='related-carousel';
    }


    ?>
    <h1><?php echo $tab_related;?></h1>
    <div class="related <?php echo $carous;?>">
        <div class="box-product">
            <ul>

                <?php foreach ($products as $product) { ?>
                <li class="related-info">
                    <?php if ($product['thumb']) { ?>
                    <div class="image"><a href="<?php echo $product['href']; ?>"><img
                                    id="img_<?php echo $product['product_id']; ?>"
                                    src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"/></a>
                    </div>
                    <?php } ?>
                    <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                    </div>
                    <?php if ($product['price']) { ?>
                    <div class="price">
                        <?php if (!$product['special']) { ?>
                        <?php echo $product['price']; ?>
                        <?php } else { ?>
                        <span class="price-new"><?php echo $product['special']; ?></span>
                        <?php if ($product['special'] != $product['price']) { ?>
                        <span class="price-old"><?php echo $product['price']; ?></span>
                        <?php } ?>
                        <!-- <span class="price-old"><?php echo $product['price']; ?></span> -->
                        <?php } ?>
                        <div class="rating">
                            <?php if ($product['rating']) { ?>
                            <img height="13"
                                 src="catalog/view/theme/theme120/image/stars-<?php echo $product['rating']; ?>.png"
                                 alt="<?php echo $product['reviews']; ?>"/>
                            <?php } ?>
                        </div>
                    </div>
                    <?php } ?>

                    <div class="cart"><a onclick="addToCart('<?php echo $product['product_id']; ?>');"
                                         class="button"><span><?php echo $button_cart; ?></span></a></div>

                </li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <?php } ?>
    <?php echo $content_bottom; ?></div>

<script type="text/javascript"><!--
    $('#button-cart').bind('click', function () {
        $.ajax({
            url: 'index.php?route=checkout/cart/add',
            type: 'post',
            data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
            dataType: 'json',
            success: function (json) {
                $('.success, .warning, .attention, information, .error').remove();

                if (json['error']) {
                    if (json['error']['option']) {
                        for (i in json['error']['option']) {
                            $('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
                        }
                    }
                }

                if (json['success']) {
                    $('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<span><img src="catalog/view/theme/theme120/image/close.png" alt="" class="close" /></span></div>');

                    $('.success').fadeIn('slow');

                    $('#cart-total').html(json['total']);

                    $('html, body').animate({scrollTop: 0}, 'slow');
                }
            }
        });
    });
    //--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
    new AjaxUpload('#button-option-<?php echo $option['
    product_option_id
    ']; ?>', {
        action: 'index.php?route=product/product/upload',
        name: 'file',
        autoSubmit: true,
        responseType: 'json',
        onSubmit: function (file, extension) {
            $('#button-option-<?php echo $option['
            product_option_id
            ']; ?>'
            ).
            after('<img src="catalog/view/theme/theme120/image/loading.gif" class="loading" style="padding-left: 5px;" />');
            $('#button-option-<?php echo $option['
            product_option_id
            ']; ?>'
            ).
            attr('disabled', true);
        },
        onComplete: function (file, json) {
            $('#button-option-<?php echo $option['
            product_option_id
            ']; ?>'
            ).
            attr('disabled', false);

            $('.error').remove();

            if (json['success']) {
                alert(json['success']);

                $('input[name=\'option[<?php echo $option['
                product_option_id
                ']; ?>]\']'
            ).
                attr('value', json['file']);
            }

            if (json['error']) {
                $('#option-<?php echo $option['
                product_option_id
                ']; ?>'
            ).
                after('<span class="error">' + json['error'] + '</span>');
            }

            $('.loading').remove();
        }
    }
    )
    ;
    //--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
    $('#review .pagination a').live('click', function () {
        $('#review').fadeOut('slow');

        $('#review').load(this.href);

        $('#review').fadeIn('slow');

        return false;
    });

    $('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

    $('#button-review').bind('click', function () {
        $.ajax({
            url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
            type: 'post',
            dataType: 'json',
            data: 'name=' + encodeURIComponent($('input[name=\'a_name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
            beforeSend: function () {
                $('.success, .warning').remove();
                $('#button-review').attr('disabled', true);
                $('#review-title').after('<div class="attention"><img src="catalog/view/theme/theme120/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
            },
            complete: function () {
                $('#button-review').attr('disabled', false);
                $('.attention').remove();
            },
            success: function (data) {
                if (data['error']) {
                    $('#review-title').after('<div class="warning">' + data['error'] + '</div>');
                }

                if (data['success']) {
                    $('#review-title').after('<div class="success">' + data['success'] + '</div>');

                    $('input[name=\'name\']').val('');
                    $('textarea[name=\'text\']').val('');
                    $('input[name=\'rating\']:checked').attr('checked', '');
                    $('input[name=\'captcha\']').val('');
                }
            }
        });
    });
    //--></script>
<script type="text/javascript"><!--
    $('#tabs a').tabs();
    //--></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script>
<script type="text/javascript"><!--
    if ($.browser.msie && $.browser.version == 6) {
        $('.date, .datetime, .time').bgIframe();
    }

    $('.date').datepicker({dateFormat: 'yy-mm-dd'});
    $('.datetime').datetimepicker({
        dateFormat: 'yy-mm-dd',
        timeFormat: 'h:m'
    });
    $('.time').timepicker({timeFormat: 'h:m'});
    //--></script>

<script>
    $(function () {
        var related_height = 0;
        $('.related ul li .name').each(function () {
            if ($(this).height() > related_height) {
                related_height = $(this).height()
            }
        })

        $('.related ul li .name').each(function () {
            $(this).height(related_height)
        })

        var stock_status = '<?php echo $check; ?>';

        if (stock_status === 'Out Of Stock') {
            $('.options, .cart').css('display', 'none');
        }
    })
</script>
<?php echo $footer; ?>