<?php
class ControllerModuleSeoGen extends Controller {
    private $error = array();

    public function install() {
        $this->load->model('module/seo_gen');
		
		$language_array = array();
		$languages = $this->model_module_seo_gen->getLanguages();
		foreach ($languages as $language)
			$language_array[] = $language['language_id'];
		$start_language = isset($language_array[0]) ? $language_array[0] : 0;
		
        $this->load->model('setting/setting');
        $this->model_setting_setting->editSetting('seo_gen', array(
			'seo_gen_category_template' => '[category_name]',
			'seo_gen_product_template' => '[product_name]',
			'seo_gen_manufacturer_template' => '[manufacturer_name]',
			'seo_gen_meta_template' => '[product_name], [product_model], [product_sku], [product_manufacturer], [product_categories]',
			'seo_gen_tags_template' => '[product_name], [product_model], [product_sku], [product_manufacturer], [product_categories]',
			'seo_gen_language' => $start_language,
			'seo_gen_auto_generate'	=>	0,
			'seo_gen_clear_cache'	=> 1
        ));
    }

    public function index() {
		$this->language->load('module/seo_gen');

		$this->document->setTitle($this->language->get('heading_title'));
	
		$this->document->addStyle('view/stylesheet/seo_gen.css');
		
        $this->load->model('setting/setting');
        $this->load->model('module/seo_gen');
        $this->load->model('catalog/category');
        $this->load->model('catalog/product');
        $this->load->model('catalog/manufacturer');
		
		$this->data['heading_title'] = $this->language->get('heading_title');
		
        $this->data['text_no_results'] = $this->language->get('text_no_results');
		$this->data['text_save'] = $this->language->get('text_save');
		$this->data['text_back'] = $this->language->get('text_back');
		$this->data['text_language'] = $this->language->get('text_language');
		$this->data['text_category_template'] = $this->language->get('text_category_template');
		$this->data['text_product_template'] = $this->language->get('text_product_template');
		$this->data['text_manufacturer_template'] = $this->language->get('text_manufacturer_template');
		$this->data['text_meta_template'] = $this->language->get('text_meta_template');
		$this->data['text_tags_template'] = $this->language->get('text_tags_template');
		$this->data['text_auto_generate'] = $this->language->get('text_auto_generate');
		$this->data['text_clear_cache'] = $this->language->get('text_clear_cache');
        $this->data['text_categories'] = $this->language->get('text_categories');
        $this->data['text_products'] = $this->language->get('text_products');
        $this->data['text_manufacturers'] = $this->language->get('text_manufacturers');
        $this->data['text_meta'] = $this->language->get('text_meta');
        $this->data['text_tags'] = $this->language->get('text_tags');
        $this->data['text_yes'] = $this->language->get('text_yes');
        $this->data['text_no'] = $this->language->get('text_no');
        $this->data['text_option_1'] = $this->language->get('text_option_1');
        $this->data['text_option_2'] = $this->language->get('text_option_2');
        $this->data['text_option_3'] = $this->language->get('text_option_3');
		
		$this->data['text_tip_1'] = $this->language->get('text_tip_1');
		$this->data['text_tip_2'] = $this->language->get('text_tip_2');
		$this->data['text_tip_3'] = $this->language->get('text_tip_3');
		$this->data['text_tip_4'] = $this->language->get('text_tip_4');
		$this->data['text_tip_5'] = $this->language->get('text_tip_5');
		$this->data['text_tip_6'] = $this->language->get('text_tip_6');
		$this->data['text_tip_7'] = $this->language->get('text_tip_7');
		$this->data['text_tip_8'] = $this->language->get('text_tip_8');
		
        $this->data['column_category_name'] = $this->language->get('column_category_name');
        $this->data['column_product_name'] = $this->language->get('column_product_name');
        $this->data['column_manufacturer_name'] = $this->language->get('column_manufacturer_name');
        $this->data['column_seo_url'] = $this->language->get('column_seo_url');
        $this->data['column_action'] = $this->language->get('column_action');
        $this->data['column_image'] = $this->language->get('column_image');
		
		$this->data['button_generate_all'] = $this->language->get('button_generate_all');
		$this->data['button_generate_clear'] = $this->language->get('button_generate_clear');
		
		$this->data['tab_settings'] = $this->language->get('tab_settings');
		$this->data['tab_generate'] = $this->language->get('tab_generate');
		$this->data['tab_category'] = $this->language->get('tab_category');
		$this->data['tab_product'] = $this->language->get('tab_product');
		$this->data['tab_manufacturer'] = $this->language->get('tab_manufacturer');
		
		$this->data['warning_clear'] = $this->language->get('warning_clear');
        $this->data['warning_clear_tags'] = $this->language->get('warning_clear_tags');
        $this->data['append_model'] = $this->language->get('append_model');
        $this->data['template'] = $this->language->get('template');
        $this->data['available_category_tags'] = $this->language->get('available_category_tags');
        $this->data['available_product_tags'] = $this->language->get('available_product_tags');
        $this->data['available_manufacturer_tags'] = $this->language->get('available_manufacturer_tags');
        $this->data['available_meta_tags'] = $this->language->get('available_meta_tags');
        $this->data['available_tags_tags'] = $this->language->get('available_tags_tags');
        $this->data['curl_not_enabled'] = $this->language->get('curl_not_enabled');

        $this->data['languages'] = $this->model_module_seo_gen->getLanguages();
		
		if (isset($this->request->get['page_category'])) {
			$page_category = $this->request->get['page_category'];
		} else {
			$page_category = 1;
		}
		
		if (isset($this->request->get['page_product'])) {
			$page_product = $this->request->get['page_product'];
		} else {
			$page_product = 1;
		}
		
		if (isset($this->request->get['page_manufacturer'])) {
			$page_manufacturer = $this->request->get['page_manufacturer'];
		} else {
			$page_manufacturer = 1;
		}
		
		$this->data['token'] = $this->session->data['token'];
		
		$url = '';
		
		if (isset($this->request->get['page_category'])) {
			$url .= '&page_category=' . $this->request->get['page_category'];
		}
		
		if (isset($this->request->get['page_product'])) {
			$url .= '&page_product=' . $this->request->get['page_product'];
		}
		
		if (isset($this->request->get['page_manufacturer'])) {
			$url .= '&page_manufacturer=' . $this->request->get['page_manufacturer'];
		}
		
		$tab = '';
		if (isset($this->request->get['tab'])) {
			$tab = $this->request->get['tab'];
		}
		
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
            
			if (isset($this->request->post['categories'])) {
                $categories_count = $this->model_module_seo_gen->generateCategories($this->request->post['category_template'], $this->request->post['current_language']);
				$this->data['success'] = sprintf($this->language->get('text_success_categories'), $categories_count);
				$tab = 'generate';
			}
			
			if (isset($this->request->post['categories_clear'])) {
                $categories_count = $this->model_module_seo_gen->generateCategoriesClear($this->request->post['category_template'], $this->request->post['current_language']);
				$this->data['success'] = sprintf($this->language->get('text_success_categories'), $categories_count);
				$tab = 'generate';
			}
			
            if (isset($this->request->post['products'])) {
                $products_count = $this->model_module_seo_gen->generateProducts($this->request->post['product_template'], $this->request->post['current_language']);
				$this->data['success'] = sprintf($this->language->get('text_success_products'), $products_count);
				$tab = 'generate';
			}
			
			if (isset($this->request->post['products_clear'])) {
                $products_count = $this->model_module_seo_gen->generateProductsClear($this->request->post['product_template'], $this->request->post['current_language']);
				$this->data['success'] = sprintf($this->language->get('text_success_products'), $products_count);
				$tab = 'generate';
			}
			
            if (isset($this->request->post['manufacturers'])) {
                $manufacturers_count = $this->model_module_seo_gen->generateManufacturers($this->request->post['manufacturer_template']);
				$this->data['success'] = sprintf($this->language->get('text_success_manufacturers'), $manufacturers_count);
				$tab = 'generate';
			}
			
            if (isset($this->request->post['manufacturers_clear'])) {
                $manufacturers_count = $this->model_module_seo_gen->generateManufacturersClear($this->request->post['manufacturer_template']);
				$this->data['success'] = sprintf($this->language->get('text_success_manufacturers'), $manufacturers_count);
				$tab = 'generate';
			}
			
            if (isset($this->request->post['meta_keywords'])) {
                $meta_count = $this->model_module_seo_gen->generateMetaKeywords($this->request->post['meta_template']);
				$this->data['success'] = sprintf($this->language->get('text_success_meta'), $meta_count);
				$tab = 'generate';
            }
			
            if (isset($this->request->post['tags'])) {
                $tags_count = $this->model_module_seo_gen->generateTags($this->request->post['tags_template']);
				$this->data['success'] = sprintf($this->language->get('text_success_tags'), $tags_count);
				$tab = 'generate';
            }
																	 
			$this->model_setting_setting->editSetting('seo_gen', array(
				'seo_gen_category_template' => $this->request->post['category_template'],
				'seo_gen_product_template' => $this->request->post['product_template'],
				'seo_gen_manufacturer_template' => $this->request->post['manufacturer_template'],
				'seo_gen_meta_template' => $this->request->post['meta_template'],
				'seo_gen_tags_template' => $this->request->post['tags_template'],
				'seo_gen_language' => $this->request->post['current_language'],
				'seo_gen_auto_generate'	=>	$this->request->post['auto_generate'],
				'seo_gen_clear_cache'	=> $this->request->post['clear_cache']
			));
			
			if (isset($this->error['warning'])) {
                $this->data['error_warning'] = $this->error['warning'];
            } 
        }
		
		$this->data['tab'] = $tab;
	
        if (isset($this->request->post['current_language'])) {
            $this->data['current_language'] = $this->request->post['current_language'];
        } else {
            $this->data['current_language'] = $this->config->get('seo_gen_language');
        }
		
        if (isset($this->request->post['category_template'])) {
            $this->data['category_template'] = $this->request->post['category_template'];
        } else {
            $this->data['category_template'] = $this->config->get('seo_gen_category_template');
        }
        if (isset($this->request->post['product_template'])) {
            $this->data['product_template'] = $this->request->post['product_template'];
        } else {
            $this->data['product_template'] = $this->config->get('seo_gen_product_template');
        }
        if (isset($this->request->post['manufacturer_template'])) {
            $this->data['manufacturer_template'] = $this->request->post['manufacturer_template'];
        } else {
            $this->data['manufacturer_template'] = $this->config->get('seo_gen_manufacturer_template');
        }
        if (isset($this->request->post['meta_template'])) {
            $this->data['meta_template'] = $this->request->post['meta_template'];
        } else {
            $this->data['meta_template'] = $this->config->get('seo_gen_meta_template');
        }
        if (isset($this->request->post['tags_template'])) {
            $this->data['tags_template'] = $this->request->post['tags_template'];
        } else {
            $this->data['tags_template'] = $this->config->get('seo_gen_tags_template');
        }
		
        if (isset($this->request->post['auto_generate'])) {
            $this->data['auto_generate'] = $this->request->post['auto_generate'];
        } else {
            $this->data['auto_generate'] = $this->config->get('seo_gen_auto_generate');
        }
		
        if (isset($this->request->post['clear_cache'])) {
            $this->data['clear_cache'] = $this->request->post['clear_cache'];
        } else {
            $this->data['clear_cache'] = $this->config->get('seo_gen_clear_cache');
        }
		
		$this->data['categories'] = array();
		
		$data = array(
			'start' => ($page_category - 1) * $this->config->get('config_admin_limit'),
			'limit' => $this->config->get('config_admin_limit')
		);
				
		$category_total = $this->model_catalog_category->getTotalCategories();
		
		$results_temp = $this->model_module_seo_gen->getCategories(0);
		
		$results = array();
		
		$i = 0; $c = 0;
		
		foreach ($results_temp as $result_temp) {
			if ($i >= $data['start']) 
				{
				if ($c < $data['limit'])
					$results[] = $result_temp;
				$c++;
				}
			$i++;
		}
		
		foreach ($results as $result) {
			$action = array();
						
			$action[] = array(
				'text' => $this->language->get('text_generate'),
				'class' => 'category_generate'
			);
			
			$seo_url = $this->model_module_seo_gen->getCategorySeo($result['category_id']);

			$this->data['categories'][] = array(
				'category_id' => $result['category_id'],
				'name'        => $result['name'],
				'seo_url' 	  => $seo_url,
				'action'      => $action
			);
		}
		
		$this->data['products'] = array();

		$data = array(
			'start'           => ($page_product - 1) * $this->config->get('config_admin_limit'),
			'limit'           => $this->config->get('config_admin_limit')
		);
		
		$this->load->model('tool/image');
		
		$product_total = $this->model_catalog_product->getTotalProducts($data);
			
		$results = $this->model_catalog_product->getProducts($data);
				    	
		foreach ($results as $result) {
			$action = array();
			
			$action[] = array(
				'text' => $this->language->get('text_generate'),
				'class' => 'product_generate'
			);
			
			if ($result['image'] && file_exists(DIR_IMAGE . $result['image'])) {
				$image = $this->model_tool_image->resize($result['image'], 40, 40);
			} else {
				$image = $this->model_tool_image->resize('no_image.jpg', 40, 40);
			}
			
			$seo_url = $this->model_module_seo_gen->getProductSeo($result['product_id']);
	
      		$this->data['products'][] = array(
				'product_id' => $result['product_id'],
				'name'       => $result['name'],
				'image'      => $image,
				'seo_url' 	 => $seo_url,
				'action'     => $action
			);
    	}
		
		$this->data['manufacturers'] = array();

		$data = array(
			'start' => ($page_manufacturer - 1) * $this->config->get('config_admin_limit'),
			'limit' => $this->config->get('config_admin_limit')
		);
		
		$manufacturer_total = $this->model_catalog_manufacturer->getTotalManufacturers();
	
		$results = $this->model_catalog_manufacturer->getManufacturers($data);
 
    	foreach ($results as $result) {
			$action = array();
			
			$action[] = array(
				'text' => $this->language->get('text_generate'),
				'class' => 'manufacturer_generate'
			);
			
			$seo_url = $this->model_module_seo_gen->getManufacturerSeo($result['manufacturer_id']);
						
			$this->data['manufacturers'][] = array(
				'manufacturer_id' => $result['manufacturer_id'],
				'name'            => $result['name'],
				'seo_url' 		  => $seo_url,
				'action'          => $action
			);
		}	
       
	   $this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/seo_gen', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);

		$this->data['action'] = $this->url->link('module/seo_gen', 'token=' . $this->session->data['token'], 'SSL');

		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
		
		$pagination_category = new Pagination();
		$pagination_category->total = $category_total;
		$pagination_category->page = $page_category;
		$pagination_category->limit = $this->config->get('config_admin_limit');
		$pagination_category->text = $this->language->get('text_pagination');
		$pagination_category->url = $this->url->link('module/seo_gen', 'token=' . $this->session->data['token'] . '&page_category={page}&tab=category', 'SSL');
			
		$this->data['pagination_category'] = $pagination_category->render();
		
		$pagination_product = new Pagination();
		$pagination_product->total = $product_total;
		$pagination_product->page = $page_product;
		$pagination_product->limit = $this->config->get('config_admin_limit');
		$pagination_product->text = $this->language->get('text_pagination');
		$pagination_product->url = $this->url->link('module/seo_gen', 'token=' . $this->session->data['token'] . '&page_product={page}&tab=product', 'SSL');
			
		$this->data['pagination_product'] = $pagination_product->render();
		
		$pagination_manufacturer = new Pagination();
		$pagination_manufacturer->total = $manufacturer_total;
		$pagination_manufacturer->page = $page_manufacturer;
		$pagination_manufacturer->limit = $this->config->get('config_admin_limit');
		$pagination_manufacturer->text = $this->language->get('text_pagination');
		$pagination_manufacturer->url = $this->url->link('module/seo_gen', 'token=' . $this->session->data['token'] . '&page_product={page}&tab=manufacturer', 'SSL');
			
		$this->data['pagination_manufacturer'] = $pagination_manufacturer->render();
		
		$this->template = 'module/seo_gen.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
    }
	
	public function category_edit() {
        $this->load->model('module/seo_gen');
		
		$category_id = $this->request->post['category_id'];
		$category_name = $this->request->post['category_name'];
		
		echo $this->model_module_seo_gen->editCategory($category_id, $category_name);
	}
	
	public function category_generate() {
        $this->load->model('module/seo_gen');
		
		$category_id = (int)$this->request->post['category_id'];
		$template = urldecode($this->request->post['template']);
		$language = (int)$this->request->post['language'];
		
		echo $this->model_module_seo_gen->generateCategory($category_id, $template, $language);
	}
	
	public function product_edit() {
        $this->load->model('module/seo_gen');
		
		$product_id = $this->request->post['product_id'];
		$product_name = $this->request->post['product_name'];
		
		echo $this->model_module_seo_gen->editProduct($product_id, $product_name);
	}
	
	public function product_generate() {
        $this->load->model('module/seo_gen');
		
		$product_id = (int)$this->request->post['product_id'];
		$template = urldecode($this->request->post['template']);
		$language = (int)$this->request->post['language'];
		
		echo $this->model_module_seo_gen->generateProduct($product_id, $template, $language);
	}
	
	public function manufacturer_edit() {
        $this->load->model('module/seo_gen');
		
		$manufacturer_id = $this->request->post['manufacturer_id'];
		$manufacturer_name = $this->request->post['manufacturer_name'];
		
		echo $this->model_module_seo_gen->editManufacturer($manufacturer_id, $manufacturer_name);
	}
	
	public function manufacturer_generate() {
        $this->load->model('module/seo_gen');
		
		$manufacturer_id = (int)$this->request->post['manufacturer_id'];
		$template = urldecode($this->request->post['template']);
		$language = (int)$this->request->post['language'];
		
		echo $this->model_module_seo_gen->generateManufacturer($manufacturer_id, $template, $language);
	}

    private function validate() {
        if (!$this->user->hasPermission('modify', 'module/seo_gen')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }
        if (!$this->error) {
            return true;
        } else {
            return false;
        }
    }
} 