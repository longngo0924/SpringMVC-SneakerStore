package com.laptrinhjavaweb.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.OrderDetailDTO;
import com.laptrinhjavaweb.service.OrderDetailService;

@Controller(value = "orderDetailControllerOfAdmin")
public class OrderDetaiController {
	@Autowired
	private OrderDetailService detailService;
	
	@RequestMapping(value = "/manage/order/orderDetail", method = RequestMethod.GET)
	public ModelAndView orderDetail(@ModelAttribute("model") OrderDetailDTO model) {
		ModelAndView mav = new ModelAndView("admin/order/orderDetail");
		model.setListResult(detailService.findAll());
		mav.addObject("detaillist", model);
		return mav;
	}
}
