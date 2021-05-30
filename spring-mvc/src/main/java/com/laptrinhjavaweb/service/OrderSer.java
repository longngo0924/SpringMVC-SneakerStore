package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.OrderDTO;
@Service
public interface OrderSer {
	List<OrderDTO> findAll();
	OrderDTO findbyId(Long id);
}
