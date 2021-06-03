package com.laptrinhjavaweb.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.entity.RoleEntity;
import com.laptrinhjavaweb.repository.RoleRepository;

@Service
public class RoleService implements IRoleService {
	@Autowired
	private RoleRepository roleRepository;

	@Override
	public void save(RoleEntity role) {
		roleRepository.save(role);

	}

	@Override
	public void addRole(long id1, long id2) {
		roleRepository.addRole(id1, id2);

	}

}
