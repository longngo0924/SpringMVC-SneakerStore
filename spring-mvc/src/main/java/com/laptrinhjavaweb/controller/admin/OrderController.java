package com.laptrinhjavaweb.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.OrderDTO;
import com.laptrinhjavaweb.service.OrderService;

@Controller(value = "orderControllerOfAdmin")
public class OrderController {
	@Autowired
	private OrderService orderService;

	@RequestMapping(value = "/manage/order/addOrder")
	public ModelAndView addOrder() {
		ModelAndView mav = new ModelAndView("admin/order/addOrder");

		return mav;
	}

	@RequestMapping(value = "/manage/order/listOrder", method = RequestMethod.GET)
	public ModelAndView listOrder(@ModelAttribute("model") OrderDTO model) {
		ModelAndView mav = new ModelAndView("admin/order/listOrder");
		model.setListResult(orderService.findAll());
		mav.addObject("orderlist", model);
		return mav;
	}

}
