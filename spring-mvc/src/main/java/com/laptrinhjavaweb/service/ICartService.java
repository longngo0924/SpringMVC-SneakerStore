package com.laptrinhjavaweb.service;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.CartDTO;

@Service
public interface ICartService {

	HashMap<Long, CartDTO> addCart(Long id, HashMap<Long, CartDTO> cart);

	HashMap<Long, CartDTO> updateCart(Long id, int quantity, HashMap<Long, CartDTO> cart);

	HashMap<Long, CartDTO> deleteCart(Long id, HashMap<Long, CartDTO> cart);

	int totalQuantity(HashMap<Long, CartDTO> cart);

	double totalPrice(HashMap<Long, CartDTO> cart);
}
