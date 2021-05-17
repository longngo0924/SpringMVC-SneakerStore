package com.laptrinhjavaweb.service;

import java.util.List;

import com.laptrinhjavaweb.dto.ProductDTO;

public interface BaseService {
	List<ProductDTO> findAll();
}
