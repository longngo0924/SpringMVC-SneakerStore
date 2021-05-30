package com.laptrinhjavaweb.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.CompanyDTO;
import com.laptrinhjavaweb.entity.CompanyEntity;
import com.laptrinhjavaweb.repository.CompanyRepository;
@Service
public class CompanyService implements CompanySer {
	@Autowired
	private CompanyRepository companyRepository;
	@Override
	public List<CompanyDTO> findAll() {
		List<CompanyDTO> models = new ArrayList<>();
		List<CompanyEntity> entities = companyRepository.findAll();
		for(CompanyEntity item : entities) {
			CompanyDTO dto = new CompanyDTO();
			dto.setId(item.getId());
			dto.setName(item.getName());
			dto.setEmail(item.getEmail());
			dto.setAddress(item.getAddress());
			models.add(dto);
		}
		return models;
	}

	@Override
	public CompanyDTO findbyId(Long id) {
		CompanyDTO model = new CompanyDTO();
		CompanyEntity entity = companyRepository.findOne(id);
		model.setId(entity.getId());
		model.setName(entity.getName());
		model.setEmail(entity.getEmail());
		model.setAddress(entity.getAddress());
		return model;
	}

}
