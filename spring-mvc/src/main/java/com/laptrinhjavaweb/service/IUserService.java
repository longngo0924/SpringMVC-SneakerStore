package com.laptrinhjavaweb.service;

import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.entity.UserEntity;

@Service
public interface IUserService {

	void save(UserEntity user);

}
