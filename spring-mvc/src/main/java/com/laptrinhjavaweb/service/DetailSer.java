package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.OrderDetailDTO;
@Service
public interface DetailSer {
	List<OrderDetailDTO> findAll();
	OrderDetailDTO findbyId(Long id);
}
