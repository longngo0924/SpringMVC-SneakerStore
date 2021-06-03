package com.laptrinhjavaweb.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.OrderDTO;

import com.laptrinhjavaweb.entity.OrderEntity;

import com.laptrinhjavaweb.repository.OrderRepository;

@Service
public class OrderService implements IOrderService {
	@Autowired
	private OrderRepository orderRepository;

	@Override
	public List<OrderDTO> findAll() {
		List<OrderDTO> models = new ArrayList<>();
		List<OrderEntity> entities = orderRepository.findAll();
		for (OrderEntity item : entities) {
			OrderDTO dto = new OrderDTO();
			dto.setId(item.getId());
			dto.setName(item.getName());
			dto.setDate(item.getDate());
			dto.setTotal(item.getTotal());
			dto.setEmployeeName(item.getEmployee().getName());
			dto.setStatus(item.getStatus());
			dto.setAddress(item.getCustomer().getAddress());
			dto.setPhone(item.getCustomer().getPhone());
			dto.setMail(item.getCustomer().getEmail());

			models.add(dto);
		}
		return models;
	}

	@Override
	public OrderDTO findbyId(Long id) {
		OrderDTO model = new OrderDTO();
		OrderEntity entity = orderRepository.findOne(id);
		model.setId(entity.getId());
		model.setName(entity.getName());
		model.setDate(entity.getDate());
		model.setTotal(entity.getTotal());
		model.setEmployeeName(entity.getEmployee().getName());
		model.setStatus(entity.getStatus());
		model.setAddress(entity.getCustomer().getAddress());
		model.setPhone(entity.getCustomer().getPhone());
		model.setMail(entity.getCustomer().getEmail());
		return model;
	}

	@Override
	public OrderEntity findById(Long id) {
		return orderRepository.findOne(id);
	}

}
