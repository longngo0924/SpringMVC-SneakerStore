package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.CustomerDTO;
import com.laptrinhjavaweb.entity.CustomerEntity;

@Service
public interface ICustomerService {
	List<CustomerDTO> findAll();

	CustomerDTO findbyId(Long id);
	
	void addCustomer(CustomerEntity customerEntity);
}
