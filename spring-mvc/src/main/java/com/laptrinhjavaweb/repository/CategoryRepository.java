package com.laptrinhjavaweb.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.laptrinhjavaweb.entity.CategoryEntity;


public interface CategoryRepository extends JpaRepository<CategoryEntity, Long> {
	@Query(value ="SELECT * FROM category WHERE Name= ?1",nativeQuery = true )
	CategoryEntity findOneByTen(String ten);
}
