package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.EmployeeDTO;
@Service
public interface EmployeeSer {
	List<EmployeeDTO> findAll();
	EmployeeDTO findbyId(Long id);
}
