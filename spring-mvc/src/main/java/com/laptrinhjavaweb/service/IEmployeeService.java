package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.EmployeeDTO;
import com.laptrinhjavaweb.entity.EmployeeEntity;

@Service
public interface IEmployeeService {
	List<EmployeeDTO> findAll();

	EmployeeDTO findbyId(Long id);

	void addEmpl(EmployeeEntity employeeEntity);

	EmployeeEntity findById(Long id);

}
