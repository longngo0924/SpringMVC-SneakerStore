package com.laptrinhjavaweb.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "productControllerOfAdmin")
public class ProductController {

	@RequestMapping(value = "/manage/product/edit")
	public ModelAndView editProduct() {
		ModelAndView mav = new ModelAndView("admin/product/edit");
		return mav;
	}
}
