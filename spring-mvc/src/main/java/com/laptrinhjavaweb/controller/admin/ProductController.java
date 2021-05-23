package com.laptrinhjavaweb.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "productControllerOfAdmin")
public class ProductController {

	@RequestMapping(value = "/manage/product/edit")
	public ModelAndView editProduct() {
		ModelAndView mav = new ModelAndView("admin/product/editProduct");
		return mav;
	}
	@RequestMapping(value = "/manage/product/addProduct")
	public ModelAndView addProduct() {
		ModelAndView mav = new ModelAndView("admin/product/addProduct");
		return mav;
	}
	@RequestMapping(value = "/manage/customer/editCus")
	public ModelAndView editCus() {
		ModelAndView mav = new ModelAndView("admin/customer/editCus");
		return mav;
	}
	@RequestMapping(value = "/manage/customer/addCus")
	public ModelAndView addCus() {
		ModelAndView mav = new ModelAndView("admin/customer/addCus");
		return mav;
	}
	@RequestMapping(value = "/manage/employee/addEmp")
	public ModelAndView addEmp() {
		ModelAndView mav = new ModelAndView("admin/employee/addEmp");
		return mav;
	}
	@RequestMapping(value = "/manage/employee/editEmp")
	public ModelAndView editEmp() {
		ModelAndView mav = new ModelAndView("admin/employee/editEmp");
		return mav;
	}
	@RequestMapping(value = "/manage/order/addOrder")
	public ModelAndView addOrder() {
		ModelAndView mav = new ModelAndView("admin/order/addOrder");
		return mav;
	}
	@RequestMapping(value = "/manage/order/editOrder")
	public ModelAndView editOrder() {
		ModelAndView mav = new ModelAndView("admin/order/editOrder");
		return mav;
	}

}
