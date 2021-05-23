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
		for (ProductEntity item : entities) {
			ProductDTO dto = new ProductDTO();
			dto.setName(item.getName());
			dto.setPrice(item.getPrice());
			dto.setDescription(item.getDescription());
			dto.setDiscount_price(item.getDiscount_price());
			dto.setSize36(item.getSize36());
			dto.setSize37(item.getSize37());
			dto.setSize38(item.getSize38());
			dto.setSize39(item.getSize39());
			dto.setSize40(item.getSize40());
			dto.setSize41(item.getSize41());
			dto.setSize42(item.getSize42());
			dto.setSize43(item.getSize43());
			dto.setSize44(item.getSize44());
			dto.setAnh(item.getAnh());

			models.add(dto);
		}
		return models;
	}

}
