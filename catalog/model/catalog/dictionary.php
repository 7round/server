<?php
class ModelCatalogdictionary extends Model {
	public function getdictionary($dictionary_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "dictionary m LEFT JOIN " . DB_PREFIX . "dictionary_to_store m2s ON (m.dictionary_id = m2s.dictionary_id) WHERE m.dictionary_id = '" . (int)$dictionary_id . "' AND m2s.store_id = '" . (int)$this->config->get('config_store_id') . "'");
	
		return $query->row;	
	}
	
	
	public function getdictionaryDescription($dictionary_id) {
		$query = $this->db->query("SHOW TABLES LIKE '" . DB_PREFIX . "dictionary_description'");

		if(!$query->num_rows) {
			return false;
		}

		$dictionary_description_data = array();
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "dictionary_description WHERE dictionary_id = '" . (int)$dictionary_id . "' AND language_id = '" . (int)$this->config->get('config_language_id') . "'");
		
		if ($query->num_rows) {
			return array(
				'description'      => $query->row['description'],
				'meta_keyword'     => $query->row['meta_keyword'],
				'meta_description' => $query->row['meta_description'],
			);
		}
		
		return false;
	}
	
	
	public function getdictionarys($data = array()) {
		if ($data) {
			$sql = "SELECT * FROM " . DB_PREFIX . "dictionary m LEFT JOIN " . DB_PREFIX . "dictionary_to_store m2s ON (m.dictionary_id = m2s.dictionary_id) WHERE m2s.store_id = '" . (int)$this->config->get('config_store_id') . "'";
			
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
		} else {
			$dictionary_data = $this->cache->get('dictionary.' . (int)$this->config->get('config_store_id'));
		
			if (!$dictionary_data) {
				$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "dictionary m LEFT JOIN " . DB_PREFIX . "dictionary_to_store m2s ON (m.dictionary_id = m2s.dictionary_id) WHERE m2s.store_id = '" . (int)$this->config->get('config_store_id') . "' ORDER BY name");
	
				$dictionary_data = $query->rows;
			
				$this->cache->set('dictionary.' . (int)$this->config->get('config_store_id'), $dictionary_data);
			}
		 
			return $dictionary_data;
		}	
	} 
}
?>