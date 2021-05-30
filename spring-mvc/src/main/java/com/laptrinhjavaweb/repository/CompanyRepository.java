package com.laptrinhjavaweb.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.laptrinhjavaweb.entity.CompanyEntity;

public interface CompanyRepository extends JpaRepository<CompanyEntity, Long>{

}
