package com.laptrinhjavaweb.controller.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.OrderDetailDTO;
import com.laptrinhjavaweb.entity.OrderDetailEntity;
import com.laptrinhjavaweb.entity.OrderEntity;
import com.laptrinhjavaweb.entity.ProductEntity;
import com.laptrinhjavaweb.service.OrderDetailService;
import com.laptrinhjavaweb.service.OrderService;
import com.laptrinhjavaweb.service.ProductService;

@Controller(value = "orderDetailControllerOfAdmin")
public class OrderDetailController {
	@Autowired
	private OrderDetailService detailService;
	@Autowired
	private ProductService productService;
	@Autowired
	private OrderService orderService;

	@RequestMapping(value = "/manage/order/orderDetail", method = RequestMethod.GET)
	public ModelAndView orderDetail(@ModelAttribute("model") OrderDetailDTO model) {
		ModelAndView mav = new ModelAndView("admin/order/orderDetail");
		model.setListResult(detailService.findAll());
		mav.addObject("detaillist", model);
		return mav;
	}

	@GetMapping("/manage/order/orderDetail/{id}")
	public String chitietHoaDon(Model model, @PathVariable Long id) {
		List<ProductEntity> listSanPham = new ArrayList<ProductEntity>();
		System.out.println(id);
		OrderEntity hoaDon = orderService.findById(id);
		List<OrderDetailEntity> listCT = detailService.findByMaHoaDon(id);
		for (OrderDetailEntity ct : listCT) {
			Long idSP = ct.getProduct().getId();
			ProductEntity sanPham = productService.findbyId(idSP);
			System.out.println(sanPham);
			listSanPham.add(sanPham);
		}
		model.addAttribute("hoaDon", hoaDon);
		model.addAttribute("listCT", listCT);
		model.addAttribute("listSP", listSanPham);
		return "admin/order/orderDetail";
	}
}
