<?php

class ControllerModuleSpecial extends Controller {

 protected function index($setting) {
  $this->language->load('module/special');

  $this->data['heading_title'] = $this->language->get('heading_title');
  $this->data['off_text'] = $this->language->get('off_text');
  $this->data['text_quick'] = $this->language->get('text_quick');
  $this->data['sale_text'] = $this->language->get('sale_text');
  $this->data['button_cart'] = $this->language->get('button_cart');
  $this->data['button_details'] = $this->language->get('button_details');
  $this->data['text_price'] = $this->language->get('text_price');
  $this->data['button_wishlist'] = $this->language->get('button_wishlist');
  $this->data['button_compare'] = $this->language->get('button_compare');
  $this->data['text_manufacturer'] = $this->language->get('text_manufacturer');
  $this->data['text_category'] = $this->language->get('text_category');
  $this->data['text_model'] = $this->language->get('text_model');
  $this->data['text_availability'] = $this->language->get('text_availability');
  $this->data['text_instock'] = $this->language->get('text_instock');
  $this->data['text_outstock'] = $this->language->get('text_outstock');
  $this->data['reviews'] = $this->language->get('reviews');
  $this->data['text_price'] = $this->language->get('text_price');
  $this->load->model('catalog/product');

  $this->load->model('tool/image');

  $this->data['products'] = array();

  $data = array(
      // 'sort' => 'pd.name',
      'sort' => 'ps.special_sort_order',
      'order' => 'ASC',
      'start' => 0,
      'limit' => $setting['limit']
  );

  $results = $this->model_catalog_product->getProductSpecials($data);

  foreach ($results as $result) {
   if ($result['image']) {
    $image = $this->model_tool_image->resize($result['image'], $setting['image_width'], $setting['image_height']);
   } else {
    $image = false;
   }
   if ($result['image']) {
    $image1 = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_thumb_width'), $this->config->get('config_image_thumb_height'));
   } else {
    $image1 = false;
   }
   if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
    $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
   } else {
    $price = false;
   }

   if ((float) $result['special']) {
    $special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
   } else {
    $special = false;
   }

   if ($this->config->get('config_review_status')) {
    $rating = $result['rating'];
   } else {
    $rating = false;
   }

   $this->data['products'][] = array(
       'product_id' => $result['product_id'],
       'description' => mb_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, 60) . '..',
       'thumb' => $image,
       'thumb1' => $image1,
       'name' => $result['name'],
       'price' => $price,
       'special' => $special,
       'description' => html_entity_decode($result['description']),
       'description1' => strip_tags(html_entity_decode($result['description'])),
       'rating' => $rating,
       'author' => $result['manufacturer'],
       'reviews' => sprintf($this->language->get('text_reviews'), (int) $result['reviews']),
       'model' => $result['model'],
       'text_availability' => $result['quantity'],
       'stock_status' => $result['stock_status'],
       'href' => $this->url->link('product/product', 'product_id=' . $result['product_id']),
   );
  }

  if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/special.tpl')) {
   $this->template = $this->config->get('config_template') . '/template/module/special.tpl';
  } else {
   $this->template = 'default/template/module/special.tpl';
  }

  $this->render();
 }

}

?>