package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.CustomerDTO;
@Service
public interface CustomerSer {
	List<CustomerDTO> findAll();
	CustomerDTO findbyId(Long id);
}
