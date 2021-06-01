package com.laptrinhjavaweb.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.repository.UserRepository;
@Service
public class UserService implements UserSer{
	@Autowired
	private UserRepository userRepository;
	@Override
	public void save(UserEntity user) {
		userRepository.save(user);
		
	}
	public UserEntity findOneByUserNameAndStatus(String name, int i) {
		return userRepository.findOneByUserNameAndStatus(name, i);
		
	}

}
