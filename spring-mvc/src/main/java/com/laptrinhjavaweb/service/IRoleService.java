package com.laptrinhjavaweb.service;

import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.entity.RoleEntity;

@Service
public interface IRoleService {

	void save(RoleEntity role);

	void addRole(long id1, long id2);
}
