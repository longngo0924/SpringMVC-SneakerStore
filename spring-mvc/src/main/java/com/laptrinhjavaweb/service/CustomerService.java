package com.laptrinhjavaweb.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.CustomerDTO;

import com.laptrinhjavaweb.entity.CustomerEntity;

import com.laptrinhjavaweb.repository.CustomerRepository;
@Service
public class CustomerService implements CustomerSer{

	@Autowired
	private CustomerRepository customerRepository;
	@Override
	public List<CustomerDTO> findAll() {
		List<CustomerDTO> models = new ArrayList<>();
		List<CustomerEntity> entities = customerRepository.findAll();
		for(CustomerEntity item : entities) {
			CustomerDTO dto = new CustomerDTO();
			dto.setId(item.getId());
			dto.setName(item.getName());
			dto.setAddress(item.getAddress());
			dto.setPhone(item.getPhone());
			dto.setEmail(item.getEmail());
			dto.setGender(item.getGender());
			dto.setUserName(item.getUser().getUsername());
			models.add(dto);
		}
		return models;
	}

	@Override
	public CustomerDTO findbyId(Long id) {
		CustomerDTO model = new CustomerDTO();
		CustomerEntity entity = customerRepository.findOne(id);
		model.setId(entity.getId());
		model.setName(entity.getName());
		model.setEmail(entity.getEmail());
		model.setPhone(entity.getPhone());
		model.setAddress(entity.getAddress());
		model.setGender(entity.getGender());
		model.setUserName(entity.getUser().getUsername());
		return model;
	}

}
