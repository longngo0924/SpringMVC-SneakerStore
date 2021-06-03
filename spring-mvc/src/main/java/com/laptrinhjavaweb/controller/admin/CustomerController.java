package com.laptrinhjavaweb.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.CustomerDTO;
import com.laptrinhjavaweb.service.CustomerService;

@Controller(value = "custumerControllerOfAdmin")
public class CustomerController {
	@Autowired
	private CustomerService customerService;

	@RequestMapping(value = "/manage/customer/listCus", method = RequestMethod.GET)
	public ModelAndView listCus(@ModelAttribute("model") CustomerDTO model) {
		ModelAndView mav = new ModelAndView("admin/customer/listCus");
		model.setListResult(customerService.findAll());
		mav.addObject("cuslist", model);
		return mav;
	}

	@RequestMapping(value = "/manage/customer/addCus")
	public ModelAndView addCus() {
		ModelAndView mav = new ModelAndView("admin/customer/addCus");
		return mav;
	}
}
