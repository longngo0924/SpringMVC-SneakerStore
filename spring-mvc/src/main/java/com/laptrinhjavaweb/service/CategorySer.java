package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.CategoryDTO;
import com.laptrinhjavaweb.entity.CategoryEntity;

@Service
public interface CategorySer {
	List<CategoryDTO> findAll();
	CategoryDTO findbyId(Long id);
	List<CategoryEntity> findAllCate();
}
