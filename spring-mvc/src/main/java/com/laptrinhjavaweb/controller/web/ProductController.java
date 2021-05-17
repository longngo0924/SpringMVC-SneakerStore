package com.laptrinhjavaweb.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.ProductDTO;
import com.laptrinhjavaweb.service.ProductService;

@Controller(value = "productControllerOfWeb")
public class ProductController {

	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/shoes", method = RequestMethod.GET)
	public ModelAndView productPage(@ModelAttribute("model") ProductDTO model) {
		ModelAndView mav = new ModelAndView("web/shoes");
		model.setListResult(productService.findAll());
		mav.addObject("model", model);
		return mav;
	}

}