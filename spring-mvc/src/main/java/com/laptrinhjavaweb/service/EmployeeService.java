package com.laptrinhjavaweb.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.EmployeeDTO;

import com.laptrinhjavaweb.entity.EmployeeEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.repository.EmployeeRepository;
@Service
public class EmployeeService implements EmployeeSer{

	@Autowired
	private EmployeeRepository employeeRepository;
	@Override
	public List<EmployeeDTO> findAll() {
		List<EmployeeDTO> models = new ArrayList<>();
		List<EmployeeEntity> entities = employeeRepository.findAll();
		for(EmployeeEntity item : entities) {
			EmployeeDTO dto = new EmployeeDTO();
			dto.setId(item.getId());
			dto.setName(item.getName());
			dto.setAddress(item.getAddress());
			dto.setPhone(item.getPhone());
			dto.setEmail(item.getEmail());
			dto.setGender(item.getGender());
			dto.setSalary(item.getSalary());
			dto.setUserName(item.getUser().getUsername());
			models.add(dto);
		}
		return models;
	}
	@Override
	public EmployeeDTO findbyId(Long id) {
		EmployeeDTO model = new EmployeeDTO();
		EmployeeEntity entity = employeeRepository.findOne(id);
		model.setId(entity.getId());
		model.setName(entity.getName());
		model.setEmail(entity.getEmail());
		model.setPhone(entity.getPhone());
		model.setAddress(entity.getAddress());
		model.setGender(entity.getGender());
		model.setSalary(entity.getSalary());
		model.setUserName(entity.getUser().getUsername());
		return model;
	}
	@Override
	public void addEmpl(EmployeeEntity employeeEntity) {
		employeeRepository.save(employeeEntity);
	}

}
