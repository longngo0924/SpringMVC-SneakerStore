package com.laptrinhjavaweb.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.CategoryDTO;
import com.laptrinhjavaweb.dto.ProductDTO;
import com.laptrinhjavaweb.service.CategoryService;
import com.laptrinhjavaweb.service.ProductService;

@Controller(value = "productControllerOfAdmin")
public class ProductController {

	@Autowired
	private ProductService productService;

	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/manage/product/listPro", method = RequestMethod.GET)
	public ModelAndView productPage(@ModelAttribute("model") ProductDTO model) {
		ModelAndView mav = new ModelAndView("admin/product/listProduct");
		model.setListResult(productService.findAll());
		mav.addObject("productlist", model);
		return mav;
	}
	
	@RequestMapping(value = "/manage/product/addProduct")
	public ModelAndView addProduct() {
		ModelAndView mav = new ModelAndView("admin/product/addProduct");
		return mav;
	}

	@RequestMapping(value = "/manage/product/editPro")
	public ModelAndView editProduct() {
		ModelAndView mav = new ModelAndView("admin/product/editPro");
		return mav;
	}

	

	
	


	

}
