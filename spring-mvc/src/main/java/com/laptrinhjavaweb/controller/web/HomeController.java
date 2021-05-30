package com.laptrinhjavaweb.controller.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "controllerOfWeb")
public class HomeController {
	@Autowired
	private JavaMailSender mailSender;
	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("web/home");
		return mav;
	}

	@RequestMapping(value = "/shoes-detail", method = RequestMethod.GET)
	public ModelAndView shoesDetailPage() {
		ModelAndView mav = new ModelAndView("web/shoes_detail");
		return mav;
	}
	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public ModelAndView checkoutPage() {
		ModelAndView mav = new ModelAndView("web/checkout");
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
	public ModelAndView registerPage() {
		ModelAndView mav = new ModelAndView("register");
		return mav;
	}

	@RequestMapping(value = "forgot-password", method = RequestMethod.GET)
	public ModelAndView forgotPasswordPage() {
		ModelAndView mav = new ModelAndView("forgotPassword");
		return mav;
	}

	

	@RequestMapping(value = "/sendmail", method = RequestMethod.POST)
	public String sendMail(HttpServletRequest request) {
		String recipientAddress = request.getParameter("recipient");
		String address = request.getParameter("address");
		String message = "Cáº£m Æ¡n quÃ½ khÃ¡ch Ä‘Ã£ Ä‘áº·t hÃ ng táº¡i 23LAB \n"+ "Ä�á»‹a chá»‰ giao hÃ ng: " + address;

		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo(recipientAddress);
		email.setSubject("23LAB - Ä�áº¶T HÃ€NG THÃ€NH CÃ”NG");
		email.setText(message);

		mailSender.send(email);
		return "web/sendmail";

	}
}