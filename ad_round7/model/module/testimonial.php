<?php
class ModelModuleTestimonial extends Model {

	public function getSeoUrl(){

		$query = $this->db->query("SELECT keyword FROM " . DB_PREFIX . "url_alias WHERE query = 'product/testimonial'");
		
		return $query->row;

	}

	public function addSeoUrl($keyword){

		$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'product/testimonial', keyword = '" . $this->db->escape($keyword) . "'");

	}

	public function editSeoUrl($keyword){

		$this->db->query("UPDATE " . DB_PREFIX . "url_alias keyword = '" . $this->db->escape($keyword) . "' WHERE query = 'product/testimonial'");

	}

}