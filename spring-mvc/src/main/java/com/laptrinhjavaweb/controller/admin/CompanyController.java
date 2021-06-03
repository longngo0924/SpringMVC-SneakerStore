package com.laptrinhjavaweb.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.CompanyDTO;

import com.laptrinhjavaweb.service.CompanyService;

@Controller(value = "companyControllerOfAdmin")
public class CompanyController {
	@Autowired
	private CompanyService companyService;

	@RequestMapping(value = "/manage/company/listCompany", method = RequestMethod.GET)
	public ModelAndView listCompany(@ModelAttribute("model") CompanyDTO model) {
		ModelAndView mav = new ModelAndView("admin/company/listCompany");
		model.setListResult(companyService.findAll());
		mav.addObject("comlist", model);
		return mav;
	}
}
