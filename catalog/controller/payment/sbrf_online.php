<?php
class ControllerPaymentSbrfOnline extends Controller {
    private $_bank;
    
    protected function index() {
        $this->language->load('payment/sbrf_online');
        $this->load->model('checkout/order');
        
        $bank = $this->config->get('sbrf_online_bank');
        $bank = $bank[$this->config->get('config_language_id')];
        $order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);

        $input = array(
            '{order_id}',
            '{total}',
            '{shipping_total}'
        );

        $totals = $this->model_checkout_order->getOrderTotals($this->session->data['order_id']);
        $this->data['amount'] = $totals[2]["text"];
        $shipping_price = explode(' ', $totals[1]["text"]);
        $shipping_price = $shipping_price[0];

        $order_total = $_SESSION['product_total'] + $shipping_price;

        $output = array(
            'order_id'        => $this->session->data['order_id'],
            // 'total'           => $this->currency->format($order_info['total'], $order_info['currency_code'], $order_info['currency_value']),
            'total'           => $order_total.' RUB',
            'shipping_total'  => $this->getShippingTotal($order_info['order_id'])
        );

        $this->data['bank'] = $this->session->data['bank'] = html_entity_decode(trim(str_replace($input, $output, $bank)), ENT_QUOTES, 'UTF-8');

        $standart_success = $this->config->get('sbrf_online_page_success');
        $standart_success = !trim(strip_tags($standart_success[$this->config->get('config_language_id')]));

        $this->_setData(array(
            'button_confirm',
            'text_instruction',
            'text_description',
            'text_payment',
            'continue'  => $standart_success ? $this->url->link('checkout/success') : $this->url->link('payment/sbrf_online/sbrf_online_success')
        ));
        
        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/sbrf_online.tpl')) {
          $this->template = $this->config->get('config_template') . '/template/payment/sbrf_online.tpl';
        } else {
          $this->template = 'default/template/payment/sbrf_online.tpl';
        }
        
        $this->render(); 
    }
	
	public function confirm() {
		$this->language->load('payment/sbrf_online');
		$this->load->model('checkout/order');
		
		$comment  = $this->language->get('text_instruction') . "\n\n";
		$comment .= $this->session->data['bank'] . "\n\n";
		$comment .= $this->language->get('text_payment');
		
		$this->model_checkout_order->confirm($this->session->data['order_id'], $this->config->get('sbrf_online_order_status_id'), $comment, true);
		unset($this->session->data['bank']);
	}

    public function sbrf_online_success() {
        if (isset($this->session->data['order_id'])) {
          $this->cart->clear();

          unset($this->session->data['shipping_method']);
          unset($this->session->data['shipping_methods']);
          unset($this->session->data['payment_method']);
          unset($this->session->data['payment_methods']);
          unset($this->session->data['guest']);
          unset($this->session->data['comment']);
          unset($this->session->data['order_id']);
          unset($this->session->data['coupon']);
          unset($this->session->data['reward']);
          unset($this->session->data['voucher']);
          unset($this->session->data['vouchers']);
        }
                         
        $this->language->load('payment/sbrf_online');
        $this->document->setTitle($this->language->get('heading_title_success'));
        
        $this->data['breadcrumbs'] = array(); 

        $this->data['breadcrumbs'][] = array(
            'href'      => $this->url->link('common/home'),
            'text'      => $this->language->get('text_home'),
            'separator' => false
        ); 
        
        $this->data['breadcrumbs'][] = array(
            'href'      => $this->url->link('checkout/cart'),
            'text'      => $this->language->get('text_basket'),
            'separator' => $this->language->get('text_separator')
        );
            
        $this->data['breadcrumbs'][] = array(
            'href'      => $this->url->link('checkout/checkout', '', 'SSL'),
            'text'      => $this->language->get('text_checkout'),
            'separator' => $this->language->get('text_separator')
        );
              
        $this->data['breadcrumbs'][] = array(
            'href'      => $this->url->link('payment/sbrf_online/sbrf_online_success'),
            'text'      => $this->language->get('text_success'),
            'separator' => $this->language->get('text_separator')
        );

        $text_message = $this->config->get('sbrf_online_page_success');
        
        $this->_setData(array(
            'button_continue',
            'heading_title' => $this->language->get('heading_title_success'),
            'text_message'  => html_entity_decode(trim($text_message[$this->config->get('config_language_id')]), ENT_QUOTES, 'UTF-8'),
            'continue'      => $this->url->link('common/home')
        ));

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/sbrf_online_success.tpl')) {
          $this->template = $this->config->get('config_template') . '/template/payment/sbrf_online_success.tpl';
        } else {
          $this->template = 'default/template/payment/sbrf_online_success.tpl';
        }
        
        $this->children = array(
          'common/column_left',
          'common/column_right',
          'common/content_top',
          'common/content_bottom',
          'common/footer',
          'common/header'
        );
            
        $this->response->setOutput($this->render());
    }

    protected function getShippingTotal($order_id) {
        $query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "order_total` WHERE order_id = '" . (int)$order_id . "' AND code = 'shipping'");
        return $query->num_rows ? $query->row['text'] : '';
    }

    protected function _setData($values) {
        foreach ($values as $key => $value) {
            if (is_int($key)) {
                $this->data[$value] = $this->language->get($value);
            } else {
                $this->data[$key] = $value;
            }
        }
    }
}
?>