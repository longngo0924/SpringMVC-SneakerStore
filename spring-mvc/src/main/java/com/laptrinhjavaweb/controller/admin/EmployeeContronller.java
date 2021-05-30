package com.laptrinhjavaweb.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.laptrinhjavaweb.dto.EmployeeDTO;
import com.laptrinhjavaweb.service.EmployeeService;

@Controller(value = "employeeControllerOfAdmin")
public class EmployeeContronller {
	@Autowired
	private EmployeeService employeeService;
	@RequestMapping(value = "/manage/employee/addEmp")
	public ModelAndView addEmp() {
		ModelAndView mav = new ModelAndView("admin/employee/addEmp");
		
		return mav;
	}

	@RequestMapping(value = "/manage/employee/listEmp", method = RequestMethod.GET)
	public ModelAndView listEmp(@ModelAttribute("model") EmployeeDTO model) {
		ModelAndView mav = new ModelAndView("admin/employee/listEmp");
		model.setListResult(employeeService.findAll());
		mav.addObject("emplist", model);
		return mav;
	}

}