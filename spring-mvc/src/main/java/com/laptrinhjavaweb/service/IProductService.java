package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.ProductDTO;
import com.laptrinhjavaweb.entity.ProductEntity;

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

	void save(ProductEntity sanPham);

	ProductEntity findbyId(Long id);

	void updateSanPham(ProductEntity sanPham);
}
