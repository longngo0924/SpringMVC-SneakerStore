package com.laptrinhjavaweb.controller.web;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.CartDTO;
import com.laptrinhjavaweb.dto.ProductDTO;
import com.laptrinhjavaweb.service.CartService;
import com.laptrinhjavaweb.service.ProductService;

@Controller(value = "cartControllerOfWeb")
public class CartController {
	
	@Autowired
	ProductService productService;

	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public ModelAndView cartPage(@ModelAttribute("model") ProductDTO model) {
		ModelAndView mav = new ModelAndView("web/cart");
		model.setListResult(productService.findAll());
		mav.addObject("model", model);
		return mav;
	}

	@Autowired
	private CartService cartService = new CartService();

	@RequestMapping(value = "/them-san-pham/{id}", method = RequestMethod.GET)
	public String addCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		@SuppressWarnings("unchecked")
		HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>) session.getAttribute("cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDTO>();
		}
		cart = cartService.addCart(id, cart);
		session.setAttribute("cart", cart);
		session.setAttribute("cartTotalQuantity", cartService.totalQuantity(cart));
		session.setAttribute("cartTotalPrice", cartService.totalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping(value = "/xoa-san-pham/{id}", method = RequestMethod.GET)
	public String deleteCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		@SuppressWarnings("unchecked")
		HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>) session.getAttribute("cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDTO>();
		}
		cart = cartService.deleteCart(id, cart);
		session.setAttribute("cart", cart);
		session.setAttribute("cartTotalQuantity", cartService.totalQuantity(cart));
		session.setAttribute("cartTotalPrice", cartService.totalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}
}
