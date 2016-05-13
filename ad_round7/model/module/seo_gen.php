<?php
class ModelModuleSeoGen extends Model {

	private function seoTranslate($str) {
		$str = html_entity_decode($str);
	
		$tr = array(
			'А'=>'A','Б'=>'B','В'=>'V','Г'=>'G','Д'=>'D','Е'=>'E',
			'Ж'=>'J','З'=>'Z','И'=>'I','Й'=>'Y','К'=>'K','Л'=>'L',
			'М'=>'M','Н'=>'N','О'=>'O','П'=>'P','Р'=>'R','С'=>'S',
			'Т'=>'T','У'=>'U','Ф'=>'F','Х'=>'H','Ц'=>'TS','Ч'=>'CH',
			'Ш'=>'SH','Щ'=>'SCH','Ъ'=>"",'Ы'=>'YI','Ь'=>"",'Э'=>'E',
			'Ю'=>'YU','Я'=>'YA','а'=>'a','б'=>'b','в'=>'v','г'=>'g',
			'д'=>'d','е'=>'e','ж'=>'j','з'=>'z','и'=>'i','й'=>'y',
			'к'=>'k','л'=>'l','м'=>'m','н'=>'n','о'=>'o','п'=>'p',
			'р'=>'r','с'=>'s','т'=>'t','у'=>'u','ф'=>'f','х'=>'h',
			'ц'=>'ts','ч'=>'ch','ш'=>'sh','щ'=>'sch','ъ'=>'y','ы'=>'yi',
			'ь'=>"",'э'=>'e','ю'=>'yu','я'=>'ya','.'=>'-',' '=>'-',
			'?'=>'-','/'=>'-','\\'=>'-','*'=>'-',':'=>'-','*'=>'-',
			'>'=>'','<'=>'','|'=>'-',"'"=>"","&"=>"-",'"'=>"",
			','=>'-','('=>'-',')'=>'-','+'=>'-', 'ё'=>'yo', 'Ё'=>'YO'
		);
		
		return strtr($str,$tr);
	}
	
	private function seoKeyword($str) {
		$str = html_entity_decode($str);
		
		$tr = array(
			'А'=>'A','Б'=>'B','В'=>'V','Г'=>'G','Д'=>'D','Е'=>'E',
			'Ж'=>'J','З'=>'Z','И'=>'I','Й'=>'Y','К'=>'K','Л'=>'L',
			'М'=>'M','Н'=>'N','О'=>'O','П'=>'P','Р'=>'R','С'=>'S',
			'Т'=>'T','У'=>'U','Ф'=>'F','Х'=>'H','Ц'=>'TS','Ч'=>'CH',
			'Ш'=>'SH','Щ'=>'SCH','Ъ'=>"",'Ы'=>'YI','Ь'=>"",'Э'=>'E',
			'Ю'=>'YU','Я'=>'YA','а'=>'a','б'=>'b','в'=>'v','г'=>'g',
			'д'=>'d','е'=>'e','ж'=>'j','з'=>'z','и'=>'i','й'=>'y',
			'к'=>'k','л'=>'l','м'=>'m','н'=>'n','о'=>'o','п'=>'p',
			'р'=>'r','с'=>'s','т'=>'t','у'=>'u','ф'=>'f','х'=>'h',
			'ц'=>'ts','ч'=>'ch','ш'=>'sh','щ'=>'sch','ъ'=>'y','ы'=>'yi',
			'ь'=>"",'э'=>'e','ю'=>'yu','я'=>'ya','.'=>'',' '=>' ',
			'?'=>'','/'=>'','\\'=>'','*'=>'',':'=>'','*'=>'',
			'>'=>'','<'=>'','|'=>'',"'"=>"","&"=>"",'"'=>"",
			','=>'','('=>'',')'=>'','+'=>'', 'ё'=>'yo', 'Ё'=>'YO'
		);
		
		$str = strtr($str,$tr);
		
		do {
            $str = str_replace('  ', ' ', $str);
            $pos = strpos($str,'  ');
        } while ($pos !== false);
		
		return $str;
	}
	
	private function seoTag($str) {
		$str = html_entity_decode($str);
		
		$tr = array(
			'А'=>'A','Б'=>'B','В'=>'V','Г'=>'G','Д'=>'D','Е'=>'E',
			'Ж'=>'J','З'=>'Z','И'=>'I','Й'=>'Y','К'=>'K','Л'=>'L',
			'М'=>'M','Н'=>'N','О'=>'O','П'=>'P','Р'=>'R','С'=>'S',
			'Т'=>'T','У'=>'U','Ф'=>'F','Х'=>'H','Ц'=>'TS','Ч'=>'CH',
			'Ш'=>'SH','Щ'=>'SCH','Ъ'=>"",'Ы'=>'YI','Ь'=>"",'Э'=>'E',
			'Ю'=>'YU','Я'=>'YA','а'=>'a','б'=>'b','в'=>'v','г'=>'g',
			'д'=>'d','е'=>'e','ж'=>'j','з'=>'z','и'=>'i','й'=>'y',
			'к'=>'k','л'=>'l','м'=>'m','н'=>'n','о'=>'o','п'=>'p',
			'р'=>'r','с'=>'s','т'=>'t','у'=>'u','ф'=>'f','х'=>'h',
			'ц'=>'ts','ч'=>'ch','ш'=>'sh','щ'=>'sch','ъ'=>'y','ы'=>'yi',
			'ь'=>"",'э'=>'e','ю'=>'yu','я'=>'ya','.'=>'',' '=>'_',
			'?'=>'','/'=>'','\\'=>'','*'=>'',':'=>'','*'=>'',
			'>'=>'','<'=>'','|'=>'',"'"=>"","&"=>"",'"'=>"",
			','=>'','('=>'',')'=>'','+'=>'', 'ё'=>'yo', 'Ё'=>'YO'
		);
		
		$str = strtr($str,$tr);
		
		do {
            $str = str_replace('__', '_', $str);
            $pos = strpos($str,'__');
        } while ($pos !== false);
		
		return $str;
	}
	
	private function deleteDuplicate($seo_url) {
	
		do {
            $seo_url = str_replace('--', '-', $seo_url);
            $pos = strpos($seo_url,'--');
        } while ($pos !== false);
		
		if (substr($seo_url, -1, 1)=='-')
		$seo_url = substr($seo_url, 0, -1);
		
		$seo_url_generated = $seo_url;
		
		$i = 1;
		do {
			$duplicate = $this->db->query("SELECT COUNT(url_alias_id) as uaid FROM " . DB_PREFIX . "url_alias WHERE keyword='". $this->db->escape($seo_url_generated) ."'");
			if ($duplicate->row['uaid']!='0') {
				$seo_url_generated = $seo_url. '-' .$i;
				$i++;
			}
			else break;
		} while (1);
		
		return $seo_url_generated;
	}

	public function getCategorySeo($category_id) {
		$query = $this->db->query("SELECT keyword FROM " . DB_PREFIX . "url_alias WHERE query = 'category_id=" . (int)$category_id . "'");
		
        return isset($query->row['keyword']) ? $query->row['keyword'] : '';
	}
	
	public function getProductSeo($product_id) {
		$query = $this->db->query("SELECT keyword FROM " . DB_PREFIX . "url_alias WHERE query = 'product_id=" . (int)$product_id . "'");
		
        return isset($query->row['keyword']) ? $query->row['keyword'] : '';
	}
	
	public function getManufacturerSeo($manufacturer_id) {
		$query = $this->db->query("SELECT keyword FROM " . DB_PREFIX . "url_alias WHERE query = 'manufacturer_id=" . (int)$manufacturer_id . "'");
		
        return isset($query->row['keyword']) ? $query->row['keyword'] : '';
	}
	
	public function generateCategories($template='', $language_id) {
        $this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query LIKE 'category_id=%'");

	    $categories = $this->db->query("SELECT cd.category_id, cd.name FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON c.category_id=cd.category_id WHERE cd.language_id='". (int)$language_id ."' ORDER BY c.sort_order DESC");
		
		foreach ($categories->rows as $category) {
			
			$tags_array = array(
				'[category_name]' => $category['name']
			);
		
			$category_name = $this->db->escape($category['name']);
			$category_name = strtr($template, $tags_array);
			
			$seo_url = strtolower($this->seoTranslate($category_name));
			$seo_url = $this->deleteDuplicate($seo_url);
			
            $this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'category_id=" . (int)$category['category_id'] . "', keyword = '" . $this->db->escape($seo_url) . "'");
        }
		
		$count_rows = 0;
		if (isset($categories->rows)) $count_rows = count($categories->rows);
		
		$this->clearConfigCache();
		
		return $count_rows;
	}
	
	public function generateCategoriesClear($template='', $language_id) {
        $categories = $this->db->query("SELECT cd.category_id, cd.name FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON c.category_id=cd.category_id WHERE cd.language_id='". (int)$language_id ."' ORDER BY c.sort_order DESC");
		
		$count_rows = 0;
		
		foreach ($categories->rows as $category) {
			
			$query = $this->db->query("SELECT COUNT(url_alias_id) as cuai FROM " . DB_PREFIX . "url_alias WHERE query = 'category_id=" . (int)$category['category_id'] . "' AND keyword!=''");
			if ($query->row['cuai']==0)
			{
				$count_rows++;
				$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query='category_id=". (int)$category['category_id'] ."'");
				
				$tags_array = array(
					'[category_name]' => $category['name']
				);
			
				$category_name = $this->db->escape($category['name']);
				$category_name = strtr($template, $tags_array);
				
				$seo_url = strtolower($this->seoTranslate($category_name));
				$seo_url = $this->deleteDuplicate($seo_url);
				
				$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'category_id=" . (int)$category['category_id'] . "', keyword = '" . $this->db->escape($seo_url) . "'");
			}
		}
		
		$this->clearConfigCache();
		
		return $count_rows;
	}
	
	public function editCategory($category_id, $category_name) {
		$query = $this->db->query("SELECT COUNT(url_alias_id) AS uaid FROM " . DB_PREFIX . "url_alias WHERE query='category_id=". (int)$category_id ."'");
	
		if ($query->row['uaid'] == 0)
			$query = $this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET keyword='". $this->db->escape($category_name) ."' WHERE query='category_id=". (int)$category_id ."'");
		else
			$query = $this->db->query("UPDATE " . DB_PREFIX . "url_alias SET keyword='". $this->db->escape($category_name) ."' WHERE query='category_id=". (int)$category_id ."'");
			
		$this->clearConfigCache();
		
		return $this->db->escape($category_name);
    }
	
	public function generateCategory($category_id, $template='', $language_id) {
        $this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query='category_id=". (int)$category_id ."'");

	    $query = $this->db->query("SELECT name FROM " . DB_PREFIX . "category_description WHERE language_id='". (int)$language_id ."' AND category_id='". (int)$category_id ."'");
        
		$tags_array = array(
			'[category_name]' => $query->row['name']
		);
	
		$category_name = $this->db->escape($query->row['name']);
		$category_name = strtr($template, $tags_array);
		
		$seo_url = strtolower($this->seoTranslate($category_name));
		$seo_url = $this->deleteDuplicate($seo_url);
		
		$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'category_id=" . (int)$category_id . "', keyword = '" . $this->db->escape($seo_url) . "'");
		
		$this->clearConfigCache();
		
		return $this->db->escape($seo_url);
	}
	
	public function generateProducts($template='', $language_id) {
        $this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query LIKE 'product_id=%'");

	    $products = $this->db->query("SELECT p.product_id, pd.name as product_name, p.model, p.sku, m.name as manufacturer_name FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON p.product_id=pd.product_id LEFT JOIN " . DB_PREFIX . "manufacturer m ON p.manufacturer_id = m.manufacturer_id WHERE pd.language_id='". (int)$language_id ."' ORDER BY p.sort_order DESC");
        
		foreach ($products->rows as $product) {
			
			$tags_array = array(
				'[product_name]' => $product['product_name'],
				'[product_model]' => $product['model'],
				'[product_sku]' => $product['sku'],
				'[product_manufacturer]' => $product['manufacturer_name']
			);
		
			$product_name = $this->db->escape($product['product_name']);
			$product_name = strtr($template, $tags_array);
			
			$seo_url = strtolower($this->seoTranslate($product_name));
			$seo_url = $this->deleteDuplicate($seo_url);
			
            $this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'product_id=" . (int)$product['product_id'] . "', keyword = '" . $this->db->escape($seo_url) . "'");
        }
		
		$count_rows = 0;
		if (isset($products->rows)) $count_rows = count($products->rows);
		
		$this->clearConfigCache();
		
		return $count_rows;
	}
	
	public function generateProductsClear($template='', $language_id) {
        $products = $this->db->query("SELECT p.product_id, pd.name as product_name, p.model, p.sku, m.name as manufacturer_name FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON p.product_id=pd.product_id LEFT JOIN " . DB_PREFIX . "manufacturer m ON p.manufacturer_id = m.manufacturer_id WHERE pd.language_id='". (int)$language_id ."' ORDER BY p.sort_order DESC");
        
		$count_rows = 0;
		
		foreach ($products->rows as $product) {
			
			$query = $this->db->query("SELECT COUNT(url_alias_id) as cuai FROM " . DB_PREFIX . "url_alias WHERE query = 'product_id=" . (int)$product['product_id'] . "' AND keyword!=''");
			if ($query->row['cuai']==0)
			{
				$count_rows++;
				$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query='product_id=". (int)$product['product_id'] ."'");
				
				$tags_array = array(
					'[product_name]' => $product['product_name'],
					'[product_model]' => $product['model'],
					'[product_sku]' => $product['sku'],
					'[product_manufacturer]' => $product['manufacturer_name']
				);
			
				$product_name = $this->db->escape($product['product_name']);
				$product_name = strtr($template, $tags_array);
				
				$seo_url = strtolower($this->seoTranslate($product_name));
				$seo_url = $this->deleteDuplicate($seo_url);
				
				$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'product_id=" . (int)$product['product_id'] . "', keyword = '" . $this->db->escape($seo_url) . "'");
			}
		}
		
		$this->clearConfigCache();
		
		return $count_rows;
	}
	
	public function editProduct($product_id, $product_name) {
		$query = $this->db->query("SELECT COUNT(url_alias_id) AS uaid FROM " . DB_PREFIX . "url_alias WHERE query='product_id=". (int)$product_id ."'");
	
		if ($query->row['uaid'] == 0)
			$query = $this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET keyword='". $this->db->escape($product_name) ."' WHERE query='product_id=". (int)$product_id ."'");
		else
			$query = $this->db->query("UPDATE " . DB_PREFIX . "url_alias SET keyword='". $this->db->escape($product_name) ."' WHERE query='product_id=". (int)$product_id ."'");
		
		$this->clearConfigCache();

		return $this->db->escape($product_name);
    }
	
	public function generateProduct($product_id, $template='', $language_id) {
        $this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query='product_id=". (int)$product_id ."'");
	    
	    $query = $this->db->query("SELECT p.product_id, pd.name as product_name, p.model, p.sku, m.name as manufacturer_name FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON p.product_id=pd.product_id LEFT JOIN " . DB_PREFIX . "manufacturer m ON p.manufacturer_id = m.manufacturer_id WHERE pd.language_id='". (int)$language_id ."' AND p.product_id='". (int)$product_id ."'");
    
		$tags_array = array(
			'[product_name]' => $query->row['product_name'],
			'[product_model]' => $query->row['model'],
			'[product_sku]' => $query->row['sku'],
			'[product_manufacturer]' => $query->row['manufacturer_name']
		);
	
		$product_name = $this->db->escape($query->row['product_name']);
		$product_name = strtr($template, $tags_array);
		
		$seo_url = strtolower($this->seoTranslate($product_name));
		$seo_url = $this->deleteDuplicate($seo_url);
		
		$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'product_id=" . (int)$product_id . "', keyword = '" . $this->db->escape($seo_url) . "'");
		
		$this->clearConfigCache();
		
		return $this->db->escape($seo_url);
	}
	
	public function generateManufacturers($template='') {
		
		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query LIKE 'manufacturer_id=%'");

	    $manufacturers = $this->db->query("SELECT m.manufacturer_id, md.title as name FROM " . DB_PREFIX . "manufacturer m left join ".DB_PREFIX."manufacturer_description md on md.manufacturer_id=m.manufacturer_id GROUP BY m.manufacturer_id ORDER BY m.sort_order DESC");
		
		foreach ($manufacturers->rows as $manufacturer) {
			$tags_array = array(
				'[manufacturer_name]' => $manufacturer['name']
			);
		
			$manufacturer_name = $this->db->escape($manufacturer['name']);
			$manufacturer_name = strtr($template, $tags_array);
			
			$seo_url = strtolower($this->seoTranslate($manufacturer_name));
			$seo_url = $this->deleteDuplicate($seo_url);
			
            $this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'manufacturer_id=" . (int)$manufacturer['manufacturer_id'] . "', keyword = '" . $this->db->escape($seo_url) . "'");
        }
		
		$count_rows = 0;
		if (isset($manufacturers->rows)) $count_rows = count($manufacturers->rows);
		
		$this->clearConfigCache();
		
		return $count_rows;
	}
	
	public function generateManufacturersClear($template='') {
        $manufacturers = $this->db->query("SELECT manufacturer_id, name FROM " . DB_PREFIX . "manufacturer ORDER BY sort_order DESC");
		
		$count_rows = 0;
		
		foreach ($manufacturers->rows as $manufacturer) {
			
			$query = $this->db->query("SELECT COUNT(url_alias_id) as cuai FROM " . DB_PREFIX . "url_alias WHERE query = 'manufacturer_id=" . (int)$manufacturer['manufacturer_id'] . "' AND keyword!=''");
			if ($query->row['cuai']==0)
			{
				$count_rows++;
				$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query='manufacturer_id=". (int)$manufacturer['manufacturer_id'] ."'");
				
				$tags_array = array(
					'[manufacturer_name]' => $manufacturer['name']
				);
			
				$manufacturer_name = $this->db->escape($manufacturer['name']);
				$manufacturer_name = strtr($template, $tags_array);
				
				$seo_url = strtolower($this->seoTranslate($manufacturer_name));
				$seo_url = $this->deleteDuplicate($seo_url);
				
				$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'manufacturer_id=" . (int)$manufacturer['manufacturer_id'] . "', keyword = '" . $this->db->escape($seo_url) . "'");
			}
		}
		
		$this->clearConfigCache();
		
		return $count_rows;
	}
	
	public function editManufacturer($manufacturer_id, $manufacturer_name) {
		$query = $this->db->query("SELECT COUNT(url_alias_id) AS uaid FROM " . DB_PREFIX . "url_alias WHERE query='manufacturer_id=". (int)$manufacturer_id ."'");
	
		if ($query->row['uaid'] == 0)
			$query = $this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET keyword='". $this->db->escape($manufacturer_name) ."' WHERE query='manufacturer_id=". (int)$manufacturer_id ."'");
		else
			$query = $this->db->query("UPDATE " . DB_PREFIX . "url_alias SET keyword='". $this->db->escape($manufacturer_name) ."' WHERE query='manufacturer_id=". (int)$manufacturer_id ."'");
		
		$this->clearConfigCache();
				
		return $this->db->escape($manufacturer_name);
    }
	
	public function generateManufacturer($manufacturer_id, $template='') {
        $this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query='manufacturer_id=". (int)$manufacturer_id ."'");

	    $query = $this->db->query("SELECT title as name FROM " . DB_PREFIX . "manufacturer_description WHERE manufacturer_id='". (int)$manufacturer_id ."' group by manufacturer_id");
        
		$tags_array = array(
			'[manufacturer_name]' => $query->row['name']
		);
	
		$manufacturer_name = $this->db->escape($query->row['name']);
		$manufacturer_name = strtr($template, $tags_array);
		
		$seo_url = strtolower($this->seoTranslate($manufacturer_name));
		$seo_url = $this->deleteDuplicate($seo_url);
		
		$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'manufacturer_id=" . (int)$manufacturer_id . "', keyword = '" . $this->db->escape($seo_url) . "'");
		
		$this->clearConfigCache();
		
		return $this->db->escape($seo_url);
	}

    public function generateMetaKeywords($template) {
        $this->db->query("UPDATE " . DB_PREFIX . "product_description SET meta_description=''");
		
		$count_rows = 0;
		
		$products = $this->db->query("SELECT p.product_id, pd.name as product_name, p.model, p.sku, m.name as manufacturer_name, pd.language_id FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON p.product_id = pd.product_id LEFT JOIN " . DB_PREFIX . "manufacturer m ON p.manufacturer_id = m.manufacturer_id ORDER BY p.sort_order DESC");
        
		foreach ($products->rows as $product) {
			
			$count_rows++;
			
			$keywords_result = array();
            $categories = $this->getProductCategories($product['product_id'], $product['language_id']);
            foreach ($categories as $category) {
                $keywords_result[] = $category['name'];
            }
			
            $tags_array = array(
				'[product_name]' => $product['product_name'],
				'[product_model]' => $product['model'],
				'[product_sku]' => $product['sku'],
				'[product_manufacturer]' => $product['manufacturer_name'],
				'[product_categories]' => implode(',', $keywords_result)
            );
			
            $keywords_result = array();
            $keywords = explode(',', strtr($template, $tags_array));
            
			foreach ($keywords as $keyword) {
                $keywords_result[] = strtolower($this->seoKeyword(trim($keyword)));
            }
			
            $keywords_result = array_filter(array_unique($keywords_result));
            $keywords_result = implode(', ', $keywords_result);
			
            $this->db->query("UPDATE " . DB_PREFIX . "product_description SET meta_keyword = '". $this->db->escape($keywords_result) ."' where product_id = ". (int)$product['product_id'] ." and language_id = '". (int)$product['language_id'] ."'");
        }
		
		return $count_rows;
    }

    public function generateTags($template) {
		$cResult = mysql_query("SHOW FIELDS FROM " . DB_PREFIX . "product_description;");
		$setFields = array();
		while ($row = mysql_fetch_row($cResult))
			array_push($setFields, $row[0]);
			
		$tags_table = 0;	
		$table_list = mysql_query("SHOW TABLES FROM `". DB_DATABASE ."`");
		while ($row = mysql_fetch_row($table_list)) {
			if ($row[0] == 'product_tag') {
				$tags_table = 1;
			}
		}	
			
		if (in_array("tag", $setFields))
		{
			$this->db->query("UPDATE " . DB_PREFIX . "product_description SET tag=''");
			
			$count_rows = 0;
			
			$products = $this->db->query("SELECT p.product_id, pd.name as product_name, p.model, p.sku, m.name as manufacturer_name, pd.language_id FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON p.product_id = pd.product_id LEFT JOIN " . DB_PREFIX . "manufacturer m ON p.manufacturer_id = m.manufacturer_id ORDER BY p.sort_order DESC");
			
			foreach ($products->rows as $product) {
				
				$count_rows++;
				
				$keywords_result = array();
				$categories = $this->getProductCategories($product['product_id'], $product['language_id']);
				foreach ($categories as $category) {
					$keywords_result[] = $category['name'];
				}
				
				$tags_array = array(
					'[product_name]' => $product['product_name'],
					'[product_model]' => $product['model'],
					'[product_sku]' => $product['sku'],
					'[product_manufacturer]' => $product['manufacturer_name'],
					'[product_categories]' => implode(',', $keywords_result)
				);
				
				$keywords_result = array();
				$keywords = explode(',', strtr($template, $tags_array));
				
				foreach ($keywords as $keyword) {
					$keywords_result[] = strtolower($this->seoTag(trim($keyword)));
				}
				
				$keywords_result = array_filter(array_unique($keywords_result));
				$keywords_result = implode(', ', $keywords_result);
				
				$this->db->query("UPDATE " . DB_PREFIX . "product_description SET tag = '". $this->db->escape($keywords_result) ."' where product_id = ". (int)$product['product_id'] ." and language_id = '". (int)$product['language_id'] ."'");
			}
		} 
		else if ($tags_table == 1)
		{
			$this->db->query("DELETE FROM " . DB_PREFIX . "product_tag");
			
			$count_rows = 0;
			
			$products = $this->db->query("SELECT p.product_id, pd.name as product_name, p.model, p.sku, m.name as manufacturer_name, pd.language_id FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON p.product_id = pd.product_id LEFT JOIN " . DB_PREFIX . "manufacturer m ON p.manufacturer_id = m.manufacturer_id ORDER BY p.sort_order DESC");
			
			foreach ($products->rows as $product) {
				
				$count_rows++;
				
				$keywords_result = array();
				$categories = $this->getProductCategories($product['product_id'], $product['language_id']);
				foreach ($categories as $category) {
					$keywords_result[] = $category['name'];
				}
				
				$tags_array = array(
					'[product_name]' => $product['product_name'],
					'[product_model]' => $product['model'],
					'[product_sku]' => $product['sku'],
					'[product_manufacturer]' => $product['manufacturer_name'],
					'[product_categories]' => implode(',', $keywords_result)
				);
				
				$keywords_result = array();
				$keywords = explode(',', strtr($template, $tags_array));
				
				foreach ($keywords as $keyword) {
					$keywords_result[] = strtolower($this->seoTag(trim($keyword)));
				}
				
				$keywords_result = array_filter(array_unique($keywords_result));
				foreach ($keywords_result as $keyword_one)
					$this->db->query("INSERT INTO " . DB_PREFIX . "product_tag SET tag = '". $this->db->escape($keyword_one) ."', product_id = ". (int)$product['product_id'] .", language_id = '". (int)$product['language_id'] ."'");
			}	
		} 
		else $count_rows = 0;
		
		return $count_rows;
    }

    private function getProductCategories($productId, $languageId) {
        $query = $this->db->query("SELECT c.category_id, cd.name FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) INNER JOIN " . DB_PREFIX . "product_to_category pc ON (pc.category_id = c.category_id) WHERE cd.language_id = " . (int)$languageId . " AND pc.product_id = " . (int)$productId . " ORDER BY c.sort_order, cd.name ASC");
        
		return $query->rows;
    }

    public function getLanguages() {
        $query = $this->db->query("SELECT language_id, name FROM " . DB_PREFIX . "language WHERE (code='en' OR code='ru') AND status='1'");
        
		return $query->rows;
    }
	
	public function getCategories($parent_id = 0) {
		$category_data = array();
	
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) WHERE c.parent_id = '" . (int)$parent_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY c.sort_order, cd.name ASC");
		
		foreach ($query->rows as $result) {
			$category_data[] = array(
				'category_id' => $result['category_id'],
				'name'        => $this->getPath($result['category_id'], $this->config->get('config_language_id')),
				'status'  	  => $result['status'],
				'sort_order'  => $result['sort_order']
			);
		
			$category_data = array_merge($category_data, $this->getCategories($result['category_id']));
		}	
		
		return $category_data;
	}
	
	public function getPath($category_id) {
		$query = $this->db->query("SELECT name, parent_id FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) WHERE c.category_id = '" . (int)$category_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY c.sort_order, cd.name ASC");
		
		if ($query->row['parent_id']) {
			return $this->getPath($query->row['parent_id'], $this->config->get('config_language_id')) . $this->language->get('text_separator') . $query->row['name'];
		} else {
			return $query->row['name'];
		}
	}
	
	public function clearConfigCache() {
		if ($this->config->get('seo_gen_clear_cache')==1) {
			$iterator = new DirectoryIterator(DIR_CACHE);
			foreach($iterator as $file){
				if (($file!='index.html') && ($file!='index.htm') && (!$file->isDot()))
					unlink($file->getPathname());
			}
		}
	}
}