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
			dto.setId(item.getId());
			dto.setName(item.getName());
			dto.setPrice(item.getPrice());
			dto.setDescription(item.getDescription());
			dto.setDiscount_price(item.getDiscount_price());
			dto.setQuantity(item.getQuantity());
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

	@Override
	public ProductDTO findOneById(Long id) {
		ProductDTO model = new ProductDTO();
		ProductEntity entity = productRepository.findOne(id);
		model.setId(entity.getId());
		model.setName(entity.getName());
		model.setPrice(entity.getPrice());
		model.setDescription(entity.getDescription());
		model.setDiscount_price(entity.getDiscount_price());
		model.setQuantity(entity.getQuantity());
		model.setSize36(entity.getSize36());
		model.setSize37(entity.getSize37());
		model.setSize38(entity.getSize38());
		model.setSize39(entity.getSize39());
		model.setSize40(entity.getSize40());
		model.setSize41(entity.getSize41());
		model.setSize42(entity.getSize42());
		model.setSize43(entity.getSize43());
		model.setSize44(entity.getSize44());
		model.setAnh(entity.getAnh());

		return model;
	}

}
