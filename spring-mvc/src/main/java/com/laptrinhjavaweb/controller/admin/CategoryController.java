package com.laptrinhjavaweb.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.CategoryDTO;
import com.laptrinhjavaweb.service.CategoryService;

@Controller(value = "categoryControllerOfAdmin")
public class CategoryController {

	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = "/manage/category/listCategory", method = RequestMethod.GET)
	public ModelAndView listCategory(@ModelAttribute("model") CategoryDTO model) {
		ModelAndView mav = new ModelAndView("admin/category/listCategory");
		model.setListResult(categoryService.findAll());
		mav.addObject("catelist", model);
		return mav;
	}
}
