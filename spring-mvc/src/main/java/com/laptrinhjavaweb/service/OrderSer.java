package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.OrderDTO;
import com.laptrinhjavaweb.entity.OrderEntity;
@Service
public interface OrderSer {
	List<OrderDTO> findAll();
	OrderDTO findbyId(Long id);
	OrderEntity findById(Long id);
}
