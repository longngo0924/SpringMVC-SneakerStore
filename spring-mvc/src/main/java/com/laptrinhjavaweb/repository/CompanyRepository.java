package com.laptrinhjavaweb.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.laptrinhjavaweb.entity.CompanyEntity;

public interface CompanyRepository extends JpaRepository<CompanyEntity, Long>{
	@Query(value ="SELECT * FROM company WHERE Name= ?1",nativeQuery = true )
	CompanyEntity findOneByTen(String ten);
}
