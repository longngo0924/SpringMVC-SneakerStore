package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.CompanyDTO;
@Service
public interface CompanySer {
	List<CompanyDTO> findAll();
	CompanyDTO findbyId(Long id);
}
