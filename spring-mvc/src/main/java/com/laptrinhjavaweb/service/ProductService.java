package com.laptrinhjavaweb.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.ProductDTO;
import com.laptrinhjavaweb.entity.ProductEntity;
import com.laptrinhjavaweb.repository.ProductRepository;

@Service
public class ProductService implements BaseService {

	@Autowired
	private ProductRepository productRepository;

	@Override
	public List<ProductDTO> findAll() {
		List<ProductDTO> models = new ArrayList<>();
		List<ProductEntity> entities = productRepository.findAll();
		for(ProductEntity item : entities) {
			ProductDTO dto = new ProductDTO();
			dto.setName(item.getName());
			dto.setPrice(item.getPrice());
			dto.setDiscount_price(item.getDiscount_price());
			dto.setQuantity(item.getQuantity());		
			models.add(dto);
		}
		return models;
	}
	
	
}
