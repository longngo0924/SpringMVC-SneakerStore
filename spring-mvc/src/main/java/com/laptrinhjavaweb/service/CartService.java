package com.laptrinhjavaweb.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.CartDTO;
import com.laptrinhjavaweb.dto.ProductDTO;

@Service
public class CartService implements ICartService {

	@Autowired
	ProductService productService = new ProductService();

	@Override
	public HashMap<Long, CartDTO> addCart(Long id, HashMap<Long, CartDTO> cart) {
		CartDTO itemCart = new CartDTO();
		ProductDTO productDTO = productService.findOneById(id);
		if (productDTO != null && cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setTotalQuantity(itemCart.getTotalQuantity() + 1);
			itemCart.setTotalPrice(itemCart.getTotalQuantity() * itemCart.getProductDTO().getPrice());
		} else {
			itemCart.setProductDTO(productDTO);
			itemCart.setTotalQuantity(1);
			itemCart.setTotalPrice(productDTO.getPrice());
		}
		cart.put(id, itemCart);
		return cart;
	}

	@Override
	public HashMap<Long, CartDTO> updateCart(Long id, int quantity, HashMap<Long, CartDTO> cart) {
		if (cart == null)
			return cart;
		CartDTO itemCart = new CartDTO();
		if (cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setTotalQuantity(quantity);
			itemCart.setTotalPrice(quantity * itemCart.getProductDTO().getPrice());
		}

		cart.put(id, itemCart);
		return cart;
	}

	@Override
	public HashMap<Long, CartDTO> deleteCart(Long id, HashMap<Long, CartDTO> cart) {
		if (cart == null)
			return cart;
		if (cart.containsKey(id)) {
			cart.remove(id);
		}
		return cart;
	}

	@Override
	public int totalQuantity(HashMap<Long, CartDTO> cart) {
		int totalQuantity = 0;
		for (Map.Entry<Long, CartDTO> itemCart : cart.entrySet()) {
			totalQuantity += itemCart.getValue().getTotalQuantity();
		}
		return totalQuantity;
	}

	@Override
	public double totalPrice(HashMap<Long, CartDTO> cart) {
		double totalPrice = 0;
		for (Map.Entry<Long, CartDTO> itemCart : cart.entrySet()) {
			totalPrice += itemCart.getValue().getTotalPrice();
		}

		return totalPrice;
	}
}
