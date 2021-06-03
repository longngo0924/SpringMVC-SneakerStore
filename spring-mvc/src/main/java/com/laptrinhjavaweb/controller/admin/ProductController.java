package com.laptrinhjavaweb.controller.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.ProductDTO;
import com.laptrinhjavaweb.entity.CategoryEntity;
import com.laptrinhjavaweb.entity.CompanyEntity;
import com.laptrinhjavaweb.entity.ProductEntity;
import com.laptrinhjavaweb.service.CategoryService;
import com.laptrinhjavaweb.service.CompanyService;
import com.laptrinhjavaweb.service.ProductService;

@Controller(value = "productControllerOfAdmin")
public class ProductController {
	@SuppressWarnings("unused")
	private Long idSP = null;
	private ProductEntity sanP = null;
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private CompanyService companyService;

	@RequestMapping(value = "/manage/product/listPro", method = RequestMethod.GET)
	public ModelAndView productPage(@ModelAttribute("model") ProductDTO model) {
		ModelAndView mav = new ModelAndView("admin/product/listProduct");
		model.setListResult(productService.findAll());
		mav.addObject("productlist", model);
		return mav;
	}

	@GetMapping("/manage/product/addProduct")
	public String themSanPham(Model model) {
		ProductDTO sanPham = new ProductDTO();
		model.addAttribute("sanPham", sanPham);
		List<CategoryEntity> listCate = categoryService.findAllCate();
		model.addAttribute("listCate", listCate);
		List<CompanyEntity> listCom = companyService.findAllCom();
		model.addAttribute("listCom", listCom);

		return "admin/product/addProduct";
	}

	@PostMapping("/manage/product/addProduct")
	public String luuSanPham(@ModelAttribute("sanPham") ProductDTO sanPham, HttpSession session,
			BindingResult bindingResult) {
		ProductEntity sp = new ProductEntity();
		sp.setName(sanPham.getName());
		sp.setCategory(categoryService.findByTen(sanPham.getCategoryName()));
		sp.setCompany(companyService.findByTen(sanPham.getCompanyName()));
		sp.setDescription(sanPham.getDescription());
		sp.setPrice(sanPham.getPrice());
		sp.setDiscount(sanPham.getDiscount());
		sp.setDiscount_price(sanPham.getDiscount_price());
		sp.setSize36(sanPham.getSize36());
		sp.setSize37(sanPham.getSize37());
		sp.setSize38(sanPham.getSize38());
		sp.setSize39(sanPham.getSize39());
		sp.setSize40(sanPham.getSize40());
		sp.setSize41(sanPham.getSize41());
		sp.setSize42(sanPham.getSize42());
		sp.setSize43(sanPham.getSize43());
		sp.setSize44(sanPham.getSize44());
		sp.setAnh(sanPham.getAnh());

		productService.save(sp);

		return "redirect:/manage/product/listPro";
	}

	@GetMapping("/manage/product/editPro/{id}")
	public String suaSanPham(@PathVariable Long id, Model model) {
		idSP = id;
		ProductDTO sp = productService.findOneById(id);
		ProductEntity sanPham = productService.findbyId(id);
		sanP = sanPham;
		model.addAttribute("sp", sp);
		model.addAttribute("sanPham", sanPham);
		List<CategoryEntity> listCate = categoryService.findAllCate();
		model.addAttribute("listCate", listCate);
		List<CompanyEntity> listCom = companyService.findAllCom();
		model.addAttribute("listCom", listCom);
		return "admin/product/editPro";
	}

	@PostMapping("/manage/product/editPro/luu-thong-tin")
	public String suaSanPham(@ModelAttribute("sp") ProductDTO sp, BindingResult bindingResult) {

		sanP.setName(sp.getName());
		sanP.setDescription(sp.getDescription());
		sanP.setPrice(sp.getPrice());
		sanP.setDiscount(sp.getDiscount());
		sanP.setSize36(sp.getSize36());
		sanP.setSize37(sp.getSize37());
		sanP.setSize38(sp.getSize38());
		sanP.setSize39(sp.getSize39());
		sanP.setSize40(sp.getSize40());
		sanP.setSize41(sp.getSize41());
		sanP.setSize42(sp.getSize42());
		sanP.setSize43(sp.getSize43());
		sanP.setSize44(sp.getSize44());
		sanP.setAnh(sp.getAnh());
		productService.updateSanPham(sanP);
		return "redirect:/manage/product/listPro";

	}

	@GetMapping("/manage/product/detailPro/{id}")
	public String detailSanPham(@PathVariable Long id, Model model) {
		idSP = id;
		ProductDTO sp = productService.findOneById(id);
		model.addAttribute("sp", sp);
		return "admin/product/detailProduct";
	}

	@PostMapping("/manage/product/editPro/back")
	public String back() {
		return "redirect:/manage/product/listPro";

	}

}
