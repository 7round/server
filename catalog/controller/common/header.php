<?php
class ControllerCommonHeader extends Controller {
	protected function index() {
		$this->data['title'] = $this->document->getTitle();
		
		// Фикс - валюта только рубли!!!!!
  $this->currency->set("RUB");
		
		if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$this->data['base'] = $this->config->get('config_ssl');
		} else {
			$this->data['base'] = $this->config->get('config_url');
		}
    
		$this->data['sitemap'] = $this->url->link('information/sitemap');
		$this->data['text_sitemap'] = $this->language->get('text_sitemap');
		$this->data['text_special'] = $this->language->get('text_special');
		$this->data['special'] = $this->url->link('product/special');
		$this->data['testimonials'] = $this->url->link('product/testimonial');
		$this->data['contact'] = $this->url->link('information/contact');
		$this->data['text_contact'] = $this->language->get('text_contact');
        $this->data['text_return'] = $this->language->get('text_return');
		$this->data['description'] = $this->document->getDescription();
		$this->data['keywords'] = $this->document->getKeywords();
		$this->data['links'] = $this->document->getLinks();	 
		$this->data['styles'] = $this->document->getStyles();
		$this->data['scripts'] = $this->document->getScripts();
		$this->data['lang'] = $this->language->get('code');
		$this->data['direction'] = $this->language->get('direction');
		$this->data['google_analytics'] = html_entity_decode($this->config->get('config_google_analytics'), ENT_QUOTES, 'UTF-8');
		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');
	
			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];	
			} else {
				$ip = ''; 
			}
			
			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];	
			} else {
				$url = '';
			}
			
			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];	
			} else {
				$referer = '';
			}
						
			$this->model_tool_online->whosonline($ip, $this->customer->getId(), $url, $referer);
		}
		$this->load->model('catalog/information');
		$this->data['informations'] = array();
		$this->language->load('common/header');
		
		foreach ($this->model_catalog_information->getInformations() as $result) {
      		$this->data['informations'][] = array(
        		'title' => $result['title'],
	    		'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id']),
          'id' => $result['information_id']
      		);
    	}
		
		if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$server = HTTPS_IMAGE;
		} else {
			$server = HTTP_IMAGE;
		}	
				
		if ($this->config->get('config_icon') && file_exists(DIR_IMAGE . $this->config->get('config_icon'))) {
			$this->data['icon'] = $server . $this->config->get('config_icon');
		} else {
			$this->data['icon'] = '';
		}
		
		$this->data['name'] = $this->config->get('config_name');
				
		if ($this->config->get('config_logo') && file_exists(DIR_IMAGE . $this->config->get('config_logo'))) {
			$this->data['logo'] = $server . $this->config->get('config_logo');
		} else {
			$this->data['logo'] = '';
		}
		
		$this->data['text_shopcart'] = $this->language->get('text_shopcart');
		$this->data['text_home'] = $this->language->get('text_home');
		$this->data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
		$this->data['text_shopping_cart'] = $this->language->get('text_shopping_cart');
    	$this->data['text_search'] = $this->language->get('text_search');
		$this->data['text_welcome'] = sprintf($this->language->get('text_welcome'), $this->url->link('account/login', '', 'SSL'), $this->url->link('account/register', '', 'SSL'));
		$this->data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', 'SSL'), $this->customer->getFirstName(), $this->url->link('account/logout', '', 'SSL'));
		$this->data['text_account'] = $this->language->get('text_account');
    	$this->data['text_checkout'] = $this->language->get('text_checkout');
		
    $this->data['name']=$this->language->get('name');
    $this->data['phone']=$this->language->get('phone');
    $this->data['ctime']=$this->language->get('ctime');
    $this->data['subject']=$this->language->get('subject');
    $this->data['submit']=$this->language->get('submit');
    $this->data['recievedMsg']=$this->language->get('recievedMsg');
    $this->data['notRecievedMsg']=$this->language->get('notRecievedMsg');
    $this->data['red_text']=$this->language->get('red_text');
    
    $this->data['sendd']=$this->language->get('sendd');
    $this->data['canceld']=$this->language->get('canceld');
		
		$this->data['home'] = $this->url->link('common/home');
		$this->data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
		$this->data['logged'] = $this->customer->isLogged();
		$this->data['account'] = $this->url->link('account/account', '', 'SSL');
		$this->data['shopping_cart'] = $this->url->link('checkout/cart');
		$this->data['checkout'] = $this->url->link('checkout/checkout', '', 'SSL');
    $this->data['return'] = $this->url->link('account/return/insert', '', 'SSL');
		
    
		if (isset($this->request->get['filter_name'])) {
			$this->data['filter_name'] = $this->request->get['filter_name'];
		} else {
			$this->data['filter_name'] = '';
		}
		
		// Menu
		// Menu
		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}
		
		if (isset($parts[0])) {
			$this->data['category_id'] = $parts[0];
		} else {
			$this->data['category_id'] = 0;
		}
		
		if (isset($parts[1])) {
			$this->data['child_id'] = $parts[1];
		} else {
			$this->data['child_id'] = 0;
		}
		if (isset($parts[2])) {
			$this->data['ch3_id'] = $parts[2];
		} else {
			$this->data['ch3_id'] = 0;
		}
		
		$this->data['categories'] = array();

        /*
		$this->load->model('catalog/category');
		$this->load->model('catalog/product');

		$categories = $this->model_catalog_category->getCategories(0);
		
		foreach ($categories as $category) {
			if ($category['top']) {
				$children_data = array();
				
				$children = $this->model_catalog_category->getCategories($category['category_id']);
				
				foreach ($children as $child) {
					$data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true	
					);		
					
					$level3 = $this->model_catalog_category->getCategories($child['category_id']);
					$l3_data = array();
					foreach ($level3 as $l3) {
						$l3_data[] = array(
							'category_id' => $l3['category_id'],
							'name'        => $l3['name'],
							'href'        => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id']. '_' . $l3['category_id'])
						);
					}
					
					$image = HTTP_IMAGE.$child['image'];				
					$children_data[] = array(
						'category_id' => $child['category_id'],
						'name'  => $child['name'],
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id']),
						'thumb' => $image,
						'children3'    => $l3_data
					);					
				}
				// Level 1
				$this->data['categories'][] = array(
					'name'     => $category['name'],
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id']),
					'category_id' => $category['category_id']
				);
			}
		}
        */

		$this->children = array(
			'module/language',
			'module/currency',
			'module/cart'
		);
    //$this->db->query("update ".DB_PREFIX."product set price=price/64.29");
		// header position 
		$route = 'common/home';
		if (!isset($this->request->get['route'])) {
			$this->data['redirect'] = $this->url->link('common/home');
		} else {
			$data = $this->request->get;
			
			unset($data['_route_']);
			
			$route = $data['route'];
			
			unset($data['route']);
			
			$url = '';
			
			if ($data) {
				$url = '&' . urldecode(http_build_query($data, '', '&'));
			}			
			
			$this->data['redirect'] = $this->url->link($route, $url);
		}
		$layout_id = 0;
		
		if (substr($route, 0, 16) == 'product/category' && isset($this->request->get['path'])) {
			$path = explode('_', (string)$this->request->get['path']);
				
			$layout_id = $this->model_catalog_category->getCategoryLayoutId(end($path));			
		}
		
		if (substr($route, 0, 15) == 'product/product' && isset($this->request->get['product_id'])) {
			$layout_id = $this->model_catalog_product->getProductLayoutId($this->request->get['product_id']);
		}
		
		if (substr($route, 0, 23) == 'information/information' && isset($this->request->get['information_id'])) {
			$layout_id = $this->model_catalog_information->getInformationLayoutId($this->request->get['information_id']);
		}
		if ($this->config->get('config_maintenance')) {
			$route = '';
			
			if (isset($this->request->get['route'])) {
				$part = explode('/', $this->request->get['route']);
				
				if (isset($part[0])) {
					$route .= $part[0];
				}			
			}
			
			// Show site if logged in as admin
			$this->load->library('user');
			
			$this->user = new User($this->registry);
	
			if (($route != 'payment') && !$this->user->isLogged()) {
				$layout_id = $this->forward('common/maintenance/info');
			}						
        }

        $this->load->model('design/layout');

		if (!$layout_id) {
			$layout_id = $this->model_design_layout->getLayout($route);
		}
				
		if (!$layout_id) {
			$layout_id = $this->config->get('config_layout_id');
		}
		$module_data = array();
			$this->load->model('setting/extension');
			
			$extensions = $this->model_setting_extension->getExtensions('module');      
			
			foreach ($extensions as $extension) {
				$modules = $this->config->get($extension['code'] . '_module');
			
				if ($modules) {
					foreach ($modules as $module) {
						if ($module['layout_id'] == $layout_id && $module['position'] == 'header' && $module['status']) {
							$module_data[] = array(
								'code'       => $extension['code'],
								'setting'    => $module,
								'sort_order' => $module['sort_order']
							);              
						}
					}
				}
			}
			
			$sort_order = array(); 
			
			foreach ($module_data as $key => $value) {
				$sort_order[$key] = $value['sort_order'];
			}
			
			array_multisort($sort_order, SORT_ASC, $module_data);
			
			$this->data['modules'] = array();
			
			foreach ($module_data as $module) {
				$module = $this->getChild('module/' . $module['code'], $module['setting']);
			
				if ($module) {
					$this->data['modules'][] = $module;
				}
			}
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/header.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/header.tpl';
		} else {
			$this->template = 'default/template/common/header.tpl';
		}
		
    	$this->render();
	} 	
}
?>