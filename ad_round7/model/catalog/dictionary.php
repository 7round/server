<?php
class ModelCatalogDictionary extends Model {
	public function addDictionary($data) {
      	$this->db->query("INSERT INTO " . DB_PREFIX . "dictionary SET name = '" . $this->db->escape($data['name']) . "', sort_order = '" . (int)$data['sort_order'] . "'");
		
		$dictionary_id = $this->db->getLastId();
		
		if($this->dictionaryDescriptionTableExists()) {
			foreach ($data['dictionary_description'] as $language_id => $value) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "dictionary_description SET dictionary_id = '" . (int)$dictionary_id . "', language_id = '" . (int)$language_id . "', meta_keyword = '" . $this->db->escape($value['meta_keyword']) . "', meta_description = '" . $this->db->escape($value['meta_description']) . "', description = '" . $this->db->escape($value['description']) . "'");
			}
		}

		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "dictionary SET image = '" . $this->db->escape(html_entity_decode($data['image'], ENT_QUOTES, 'UTF-8')) . "' WHERE dictionary_id = '" . (int)$dictionary_id . "'");
		}
		
		if (isset($data['dictionary_store'])) {
			foreach ($data['dictionary_store'] as $store_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "dictionary_to_store SET dictionary_id = '" . (int)$dictionary_id . "', store_id = '" . (int)$store_id . "'");
			}
		}
				
		if ($data['keyword']) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'dictionary_id=" . (int)$dictionary_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
		}
		
		$this->cache->delete('dictionary');
	}
	
	public function editDictionary($dictionary_id, $data) {
	
		if($this->dictionaryDescriptionTableExists()) {
			$this->db->query("DELETE FROM " . DB_PREFIX . "dictionary_description WHERE dictionary_id = '" . (int)$dictionary_id . "'");
			
			foreach ($data['dictionary_description'] as $language_id => $value) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "dictionary_description SET dictionary_id = '" . (int)$dictionary_id . "', language_id = '" . (int)$language_id . "', meta_keyword = '" . $this->db->escape($value['meta_keyword']) . "', meta_description = '" . $this->db->escape($value['meta_description']) . "', description = '" . $this->db->escape($value['description']) . "'");
			}
		}
	
      	$this->db->query("UPDATE " . DB_PREFIX . "dictionary SET name = '" . $this->db->escape($data['name']) . "', sort_order = '" . (int)$data['sort_order'] . "' WHERE dictionary_id = '" . (int)$dictionary_id . "'");

		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "dictionary SET image = '" . $this->db->escape(html_entity_decode($data['image'], ENT_QUOTES, 'UTF-8')) . "' WHERE dictionary_id = '" . (int)$dictionary_id . "'");
		}
		
		$this->db->query("DELETE FROM " . DB_PREFIX . "dictionary_to_store WHERE dictionary_id = '" . (int)$dictionary_id . "'");

		if (isset($data['dictionary_store'])) {
			foreach ($data['dictionary_store'] as $store_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "dictionary_to_store SET dictionary_id = '" . (int)$dictionary_id . "', store_id = '" . (int)$store_id . "'");
			}
		}
			
		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'dictionary_id=" . (int)$dictionary_id. "'");
		
		if ($data['keyword']) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'dictionary_id=" . (int)$dictionary_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
		}
		
		$this->cache->delete('dictionary');
	}
	
	public function deleteDictionary($dictionary_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "dictionary_description WHERE dictionary_id = '" . (int) $dictionary_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "dictionary WHERE dictionary_id = '" . (int)$dictionary_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "dictionary_to_store WHERE dictionary_id = '" . (int)$dictionary_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'dictionary_id=" . (int)$dictionary_id . "'");
			
		$this->cache->delete('dictionary');
	}	
	
	public function getDictionary($dictionary_id) {
		$query = $this->db->query("SELECT DISTINCT *, (SELECT keyword FROM " . DB_PREFIX . "url_alias WHERE query = 'dictionary_id=" . (int)$dictionary_id . "') AS keyword FROM " . DB_PREFIX . "dictionary WHERE dictionary_id = '" . (int)$dictionary_id . "'");
		
		return $query->row;
	}
	
	public function getDictionarys($data = array()) {
		$sql = "SELECT * FROM " . DB_PREFIX . "dictionary";
		
		$sort_data = array(
			'name',
			'sort_order'
		);	
		
		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];	
		} else {
			$sql .= " ORDER BY name";	
		}
		
		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}
		
		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}					

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}	
		
			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}				
		
		$query = $this->db->query($sql);
	
		return $query->rows;
	}
	
	
	public function dictionaryDescriptionTableExists() {
		$query = $this->db->query("SHOW TABLES LIKE '" . DB_PREFIX . "dictionary_description'");
		
		return $query->num_rows ? true : false;
	}

	public function getDictionaryDescription($dictionary_id) {
		if(!$this->dictionaryDescriptionTableExists()) {
			return false;
		}

		$dictionary_description_data = array();
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "dictionary_description WHERE dictionary_id = '" . (int)$dictionary_id . "'");
		
		foreach ($query->rows as $result) {
			$dictionary_description_data[$result['language_id']] = array(
				'description'      => $result['description'],
				'meta_keyword'     => $result['meta_keyword'],
				'meta_description' => $result['meta_description'],
			);
		}
		
		return $dictionary_description_data;
	}
	
	
	public function getDictionaryStores($dictionary_id) {
		$dictionary_store_data = array();
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "dictionary_to_store WHERE dictionary_id = '" . (int)$dictionary_id . "'");

		foreach ($query->rows as $result) {
			$dictionary_store_data[] = $result['store_id'];
		}
		
		return $dictionary_store_data;
	}
	
	public function getTotalDictionarysByImageId($image_id) {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "dictionary WHERE image_id = '" . (int)$image_id . "'");

		return $query->row['total'];
	}

	public function getTotalDictionarys() {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "dictionary");
		
		return $query->row['total'];
	}	
}
?>