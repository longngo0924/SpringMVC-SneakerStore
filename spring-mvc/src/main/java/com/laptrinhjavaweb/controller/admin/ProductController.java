package com.laptrinhjavaweb.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.ProductDTO;
import com.laptrinhjavaweb.service.ProductService;

@Controller(value = "productControllerOfAdmin")
public class ProductController {

	private ProductService productService;
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
	@RequestMapping(value = "/manage/customer/listCus")
	public ModelAndView listCus() {
		ModelAndView mav = new ModelAndView("admin/customer/listCus");
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
	@RequestMapping(value = "/manage/employee/listEmp")
	public ModelAndView listEmp() {
		ModelAndView mav = new ModelAndView("admin/employee/listEmp");
		return mav;
	}
	@RequestMapping(value = "/manage/order/addOrder")
	public ModelAndView addOrder() {
		ModelAndView mav = new ModelAndView("admin/order/addOrder");
		return mav;
	}
	@RequestMapping(value = "/manage/order/listOrder")
	public ModelAndView listOrder() {
		ModelAndView mav = new ModelAndView("admin/order/listOrder");
		return mav;
	}
	@RequestMapping(value = "/manage/order/orderDetail")
	public ModelAndView orderDetail() {
		ModelAndView mav = new ModelAndView("admin/order/orderDetail");
		return mav;
	}
	@RequestMapping(value = "/manage/company/listCompany")
	public ModelAndView listCompany() {
		ModelAndView mav = new ModelAndView("admin/company/listCompany");
		return mav;
	}@RequestMapping(value = "/manage/category/listCategory")
	public ModelAndView listCategory() {
		ModelAndView mav = new ModelAndView("admin/category/listCategory");
		return mav;
	}
}
