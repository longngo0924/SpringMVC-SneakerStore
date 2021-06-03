package com.laptrinhjavaweb.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.ProductDTO;
import com.laptrinhjavaweb.service.ProductService;

@Controller(value = "controllerOfAdmin")
public class HomeController {

	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/manage/home", method = RequestMethod.GET)
	public ModelAndView adminPage(@ModelAttribute("model") ProductDTO model) {
		ModelAndView mav = new ModelAndView("admin/home");
		model.setListResult(productService.findAll());
		mav.addObject("model", model);
		return mav;
	}
	
	@RequestMapping(value = "/manage/emp-home", method = RequestMethod.GET)
	public ModelAndView empPage(@ModelAttribute("model") ProductDTO model) {
		ModelAndView mav = new ModelAndView("admin/emp-home");
		model.setListResult(productService.findAll());
		mav.addObject("model", model);
		return mav;
	}
}
