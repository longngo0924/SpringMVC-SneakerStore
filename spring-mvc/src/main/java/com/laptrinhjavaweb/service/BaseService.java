package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.ProductDTO;
import com.laptrinhjavaweb.entity.ProductEntity;

@Service
public interface BaseService {
	List<ProductDTO> findAll();

	ProductDTO findOneById(Long id);

//	List<ProductDTO> findBySearch(String key);
//	void createProduct(ProductDTO productDto);
	void save(ProductEntity sanPham);

	ProductEntity findbyId(Long id);

	void updateSanPham(ProductEntity sanPham);

}
