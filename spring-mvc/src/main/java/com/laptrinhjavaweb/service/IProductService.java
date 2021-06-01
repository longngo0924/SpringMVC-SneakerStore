package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.ProductDTO;

@Service
public interface IProductService {
	List<ProductDTO> findAll();

	ProductDTO findOneById(Long id);

	List<ProductDTO> findNewestProduct();

	List<ProductDTO> findLifestyleProduct();

	List<ProductDTO> findNRunningProduct();

	List<ProductDTO> findBasketballProduct();

	List<ProductDTO> findGymProduct();

	List<ProductDTO> findSandalProduct();
}
