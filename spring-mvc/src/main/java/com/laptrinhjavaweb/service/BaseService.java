package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.ProductDTO;

@Service
public interface BaseService {
	List<ProductDTO> findAll();
}
