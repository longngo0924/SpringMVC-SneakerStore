package com.laptrinhjavaweb.controller.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.CustomerDTO;
import com.laptrinhjavaweb.dto.ProductDTO;
import com.laptrinhjavaweb.entity.CustomerEntity;
import com.laptrinhjavaweb.entity.RoleEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.service.CustomerService;
import com.laptrinhjavaweb.service.ProductService;
import com.laptrinhjavaweb.service.RoleService;
import com.laptrinhjavaweb.service.UserService;

@Controller(value = "controllerOfWeb")
public class HomeController {

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private ProductService productService;

	@Autowired
	private UserService userService;

	@Autowired
	private CustomerService customerService;

	@Autowired
	private RoleService roleService;

	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage(@ModelAttribute("model") ProductDTO model) {
		ModelAndView mav = new ModelAndView("web/home");
		model.setListResult(productService.findAll());
		return mav;
	}

	@RequestMapping(value = "/shoes", method = RequestMethod.GET)
	public ModelAndView shoesPage() {
		ModelAndView mav = new ModelAndView("web/shoes");
		return mav;
	}

	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public ModelAndView loginPage() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}

	@RequestMapping(value = "/dang-xuat", method = RequestMethod.GET)
	public ModelAndView logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication != null) {
			new SecurityContextLogoutHandler().logout(request, response, authentication);
		}
		return new ModelAndView("redirect:'/trang-chu");
	}

	@RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
	public ModelAndView accessDenied() {
		ModelAndView mav = new ModelAndView("401");
		return mav;
	}

	@RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
	public String registerPage(Model model) {
		CustomerDTO customerDTO = new CustomerDTO();
		model.addAttribute("customer", customerDTO);
		System.out.println("ghjkl");
		return "register";
	}

	@RequestMapping(value = "/dang-ky", method = RequestMethod.POST)
	public String addCustomer(@ModelAttribute("customer") CustomerDTO customerDTO, HttpSession session,
			BindingResult bindingResult, HttpServletRequest request) throws IOException {
		CustomerEntity customerEntity = new CustomerEntity();
		List<RoleEntity> listUser = new ArrayList<RoleEntity>();
		UserEntity userEntity = new UserEntity();

		customerEntity.setName(customerDTO.getName());
		customerEntity.setAddress(customerDTO.getAddress());
		customerEntity.setEmail(customerDTO.getEmail());
		customerEntity.setPhone(customerDTO.getPhone());
		userEntity.setCustomer(customerEntity);
		userEntity.setStatus(1);
		userEntity.setEmail(customerDTO.getEmail());
		String hash = BCrypt.hashpw(customerDTO.getUserPass(), BCrypt.gensalt(10));
		userEntity.setPassword(hash);
		userEntity.setUsername(customerDTO.getUserName());
		customerEntity.setUser(userEntity);
		userEntity.setRoles(listUser);
		userService.save(userEntity);
		customerService.addCustomer(customerEntity);
		roleService.addRole(3, userEntity.getId());

		String toEmail = customerDTO.getEmail();
		String message = "Quý khách đã đăng kí tài khoản thành công";

		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo(toEmail);
		email.setSubject("ĐĂNG KÍ THÀNH CÔNG");
		email.setText(message);

		mailSender.send(email);

		return "redirect:/dang-nhap";
	}

	@RequestMapping(value = "forgot-password", method = RequestMethod.GET)
	public ModelAndView forgotPasswordPage() {
		ModelAndView mav = new ModelAndView("forgotPassword");
		return mav;
	}

	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public ModelAndView checkoutPage() {
		ModelAndView mav = new ModelAndView("web/checkout");
		return mav;
	}

	@RequestMapping(value = "/sendmail", method = RequestMethod.POST)
	public String sendMail(HttpServletRequest request) {
		String recipientAddress = request.getParameter("recipient");
		String address = request.getParameter("address");
		String message = "Cảm ơn quý khách đã đặt hàng tại 23LAB \n" + "Địa chỉ giao hàng: " + address;

		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo(recipientAddress);
		email.setSubject("23LAB - ĐẶT HÀNG THÀNH CÔNG");
		email.setText(message);

		mailSender.send(email);
		return "web/sendmail";

	}
}