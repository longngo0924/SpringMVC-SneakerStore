package com.laptrinhjavaweb.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.OrderDetailDTO;
import com.laptrinhjavaweb.entity.OrderDetailEntity;
import com.laptrinhjavaweb.repository.OrderDetailRepository;

@Service
public class OrderDetailService implements IOrderDetailService {
	@Autowired
	private OrderDetailRepository orderDetailRepository;

	@Override
	public List<OrderDetailDTO> findAll() {
		List<OrderDetailDTO> models = new ArrayList<>();
		List<OrderDetailEntity> entities = orderDetailRepository.findAll();
		for (OrderDetailEntity item : entities) {
			OrderDetailDTO dto = new OrderDetailDTO();
			dto.setId(item.getId());
			dto.setQuantity(item.getQuantity());
			dto.setPrice(item.getPrice());
			dto.setSize(item.getSize());
			models.add(dto);
		}
		return models;
	}

	@Override
	public OrderDetailDTO findbyId(Long id) {
		OrderDetailDTO model = new OrderDetailDTO();
		OrderDetailEntity entity = orderDetailRepository.findOne(id);
		model.setId(entity.getId());
		model.setQuantity(entity.getQuantity());
		model.setPrice(entity.getPrice());
		model.setSize(entity.getSize());
		return model;
	}

	public List<OrderDetailEntity> findByMaHoaDon(Long hoadonID) {

		return orderDetailRepository.findByHoaDon(hoadonID);
	}

}
