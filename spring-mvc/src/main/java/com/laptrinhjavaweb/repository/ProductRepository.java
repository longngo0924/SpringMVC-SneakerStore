package com.laptrinhjavaweb.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.laptrinhjavaweb.entity.ProductEntity;

public interface ProductRepository extends JpaRepository<ProductEntity, Long> {
	
	@Query(value = "select * from product where category_id = 1", nativeQuery = true)
	List<ProductEntity> findNewestProduct();
	
	@Query(value = "select * from product where category_id = 2", nativeQuery = true)
	List<ProductEntity> findLifestyleProduct();
	
	@Query(value = "select * from product where category_id = 3", nativeQuery = true)
	List<ProductEntity> findNRunningProduct();
	
	@Query(value = "select * from product where category_id = 4", nativeQuery = true)
	List<ProductEntity> findBasketballProduct();
	
	@Query(value = "select * from product where category_id = 5", nativeQuery = true)
	List<ProductEntity> findGymProduct();
	
	@Query(value = "select * from product where category_id = 6", nativeQuery = true)
	List<ProductEntity> findSandalProduct();
	
}
