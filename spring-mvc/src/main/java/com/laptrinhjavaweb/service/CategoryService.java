package com.laptrinhjavaweb.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.CategoryDTO;

import com.laptrinhjavaweb.entity.CategoryEntity;

import com.laptrinhjavaweb.repository.CategoryRepository;
@Service
public class CategoryService implements CategorySer{
	@Autowired
	private CategoryRepository categoryRepository;
	@Override
	public List<CategoryDTO> findAll() {
		List<CategoryDTO> models = new ArrayList<>();
		List<CategoryEntity> entities = categoryRepository.findAll();
		for(CategoryEntity item : entities) {
			CategoryDTO dto = new CategoryDTO();
			dto.setId(item.getId());
			dto.setName(item.getName());
			models.add(dto);
		}
		return models;
	}

	@Override
	public CategoryDTO findbyId(Long id) {
		CategoryDTO model = new CategoryDTO();
		CategoryEntity entity = categoryRepository.findOne(id);
		model.setId(entity.getId());
		model.setName(entity.getName());
		return model;
	}
}
