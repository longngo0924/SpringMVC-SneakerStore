package com.laptrinhjavaweb.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.CategoryDTO;
import com.laptrinhjavaweb.entity.CategoryEntity;
import com.laptrinhjavaweb.repository.CategoryRepository;

@Service
public class CategoryService {
	@Autowired
	private CategoryRepository categoryRepository;

	public CategoryDTO findOneById(long id) {
		CategoryDTO model = new CategoryDTO();
		CategoryEntity entity = categoryRepository.findOne(id);
		model.setId(entity.getId());

		return model;
	}
}
