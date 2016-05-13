<?php
class ControllerPaymentSberBankTransfer extends Controller {
	protected function index() {
		$this->language->load('payment/sberbank_transfer');

		$this->data['text_printpay'] = str_replace('{href}', $this->url->link('payment/sberbank_transfer/printpay', '', 'SSL'), $this->language->get('text_printpay'));
		$this->data['text_payment'] = $this->language->get('text_payment');
		$this->data['text_payment_coment'] = $this->language->get('text_payment_coment');
		if ($this->customer->isLogged()) {
			$this->data['text_order_history'] = str_replace('{href}', $this->url->link('account/order', '', 'SSL'), $this->language->get('text_order_history'));
		} else {
			$this->data['text_order_history'] = '';
		}

		$this->data['button_confirm'] = $this->language->get('button_confirm');

		$this->data['continue'] = $this->url->link('checkout/success');

		$this->template = $this->config->get('config_template') . '/template/payment/sberbank_transfer.tpl';

		if (!file_exists(DIR_TEMPLATE . $this->template)) {
			$this->template = 'default/template/payment/sberbank_transfer.tpl';
		}

		$this->render();
	}

	public function printpay() {

		if (!empty($this->request->get['order_id'])) {
		
			$order_id = $this->request->get['order_id'];
			
			$this->load->model('account/order');

			$order_info = $this->model_account_order->getOrder($this->request->get['order_id']);
		} else {
		
			$order_id = $this->session->data['order_id'];
		
			$this->load->model('checkout/order');

			$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);
		}

		$this->data['order_id'] = $order_id;

		if (!$order_info) {
			return $this->forward('account/order');
		}

		$this->load->model('checkout/order');

		$products = $this->model_checkout_order->getOrderProducts($order_id);

		$product_total = 0;

		foreach ($products as $key => $product) {

			// Display prices
			if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
				$price = $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$price = false;
			}
				
			$k = count($this->data['products'])-1;
		
			$price = explode(' ', $price);
			$total = $price[0]*$product['quantity'];

			$product_total += $total;

			$this->data['products'][] = array(
      			'key'      => $key+1,
				'name'     => $product['name'],
      			'quantity' => $product['quantity'],
				'price'    => $price[0],
				'total'    => $total
			);

		}

		$this->data['product_total'] = $product_total;
// var_dump($order_info); die;
		$this->language->load('payment/sberbank_transfer');

		$this->data['text_confirm'] = $this->language->get('text_confirm');

		$this->data['button_confirm'] = $this->language->get('button_confirm');
		$this->data['button_back'] = $this->language->get('button_back');

		$this->data['bank'] = nl2br($this->config->get('sberbank_transfer_bank_' . $this->config->get('config_language_id')));
		$this->data['inn'] = nl2br($this->config->get('sberbank_transfer_inn_' . $this->config->get('config_language_id')));
                $this->data['kpp'] = nl2br($this->config->get('sberbank_transfer_kpp_' . $this->config->get('config_language_id')));
		$this->data['rs'] = nl2br($this->config->get('sberbank_transfer_rs_' . $this->config->get('config_language_id')));
		$this->data['bankuser'] = nl2br($this->config->get('sberbank_transfer_bankuser_' . $this->config->get('config_language_id')));
		$this->data['bik'] = nl2br($this->config->get('sberbank_transfer_bik_' . $this->config->get('config_language_id')));
		$this->data['ks'] = nl2br($this->config->get('sberbank_transfer_ks_' . $this->config->get('config_language_id')));

		$rur_order_total = $this->currency->convert($order_info['total'], $order_info['currency_code'], 'RUB');

		$this->data['amount'] = $this->currency->format($rur_order_total, 'RUB', $order_info['currency_value'], FALSE);
		
		//Фикс для рубли
		$this->load->model('checkout/order');
		$totals = $this->model_checkout_order->getOrderTotals($order_id);
		$this->data['amount'] = $totals[2]["text"];
		$shipping_price = explode(' ', $totals[1]["text"]);
		$shipping_price = $shipping_price[0];
		$this->data['shipping_price'] = $shipping_price;
		//------------------

		$this->data['order_total'] = $product_total + $shipping_price;

		$this->data['order_total_text'] = $this->num2str($this->data['order_total']);

		$this->data['order_id'] = $order_info['order_id'];
		$this->data['order_date'] = date('d.m.Y', strtotime($order_info['date_added']));

		$this->data['name'] = $order_info['payment_firstname'] . ' '.$order_info['fathername'] .' '. $order_info['payment_lastname'];
		$this->data['address'] = $order_info['payment_postcode'] . ', ' . $order_info['payment_country'] . ', ' . $order_info['payment_zone'] . ', ' . $order_info['payment_city'] . ', ' .$order_info['payment_address_1'];		
		$this->data['postcode'] = $order_info['payment_postcode'];

		$this->data['shipping_method'] = $order_info['shipping_method'];

		$this->template = $this->config->get('config_template') . '/template/payment/sberbank_transfer_printpay.tpl';

		if (!file_exists(DIR_TEMPLATE . $this->template)) {
			$this->template = 'default/template/payment/sberbank_transfer_printpay.tpl';
		}

		$this->response->setOutput($this->render());
	}

	function num2str($num) {
		$nul='ноль';
		$ten=array(
			array('','один','два','три','четыре','пять','шесть','семь', 'восемь','девять'),
			array('','одна','две','три','четыре','пять','шесть','семь', 'восемь','девять'),
		);
		$a20=array('десять','одиннадцать','двенадцать','тринадцать','четырнадцать' ,'пятнадцать','шестнадцать','семнадцать','восемнадцать','девятнадцать');
		$tens=array(2=>'двадцать','тридцать','сорок','пятьдесят','шестьдесят','семьдесят' ,'восемьдесят','девяносто');
		$hundred=array('','сто','двести','триста','четыреста','пятьсот','шестьсот', 'семьсот','восемьсот','девятьсот');
		$unit=array( // Units
			array('копейка' ,'копейки' ,'копеек',	 1),
			array('рубль'   ,'рубля'   ,'рублей'    ,0),
			array('тысяча'  ,'тысячи'  ,'тысяч'     ,1),
			array('миллион' ,'миллиона','миллионов' ,0),
			array('миллиард','милиарда','миллиардов',0),
		);
		//
		list($rub,$kop) = explode('.',sprintf("%015.2f", floatval($num)));
		$out = array();
		if (intval($rub)>0) {
			foreach(str_split($rub,3) as $uk=>$v) { // by 3 symbols
				if (!intval($v)) continue;
				$uk = sizeof($unit)-$uk-1; // unit key
				$gender = $unit[$uk][3];
				list($i1,$i2,$i3) = array_map('intval',str_split($v,1));
				// mega-logic
				$out[] = $hundred[$i1]; # 1xx-9xx
				if ($i2>1) $out[]= $tens[$i2].' '.$ten[$gender][$i3]; # 20-99
				else $out[]= $i2>0 ? $a20[$i3] : $ten[$gender][$i3]; # 10-19 | 1-9
				// units without rub & kop
				if ($uk>1) $out[]= $this->morph($v,$unit[$uk][0],$unit[$uk][1],$unit[$uk][2]);
			} //foreach
		}
		else $out[] = $nul;
		$out[] = $this->morph(intval($rub), $unit[1][0],$unit[1][1],$unit[1][2]); // rub
		// $out[] = $kop.' '.$this->morph($kop,$unit[0][0],$unit[0][1],$unit[0][2]); // kop
		return trim(preg_replace('/ {2,}/', ' ', join(' ',$out)));
	}

	/**
	 * Склоняем словоформу
	 * @ author runcore
	 */
	function morph($n, $f1, $f2, $f5) {
		$n = abs(intval($n)) % 100;
		if ($n>10 && $n<20) return $f5;
		$n = $n % 10;
		if ($n>1 && $n<5) return $f2;
		if ($n==1) return $f1;
		return $f5;
	}

	public function confirm() {
		$this->language->load('payment/sberbank_transfer');

		$this->load->model('checkout/order');

		$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);

		if ($order_info) {
		$comment .= $this->language->get('text_payment_coment') . "\n\n";
			$comment .= str_replace('{href}', $this->url->link('payment/sberbank_transfer/printpay', 'order_id=' . $order_info['order_id'], 'SSL'), $this->language->get('text_printpay'));
			$this->model_checkout_order->confirm($order_info['order_id'], $this->config->get('sberbank_transfer_order_status_id'), $comment, true);
		}
	}
}
?>