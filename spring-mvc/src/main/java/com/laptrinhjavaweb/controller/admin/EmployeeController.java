package com.laptrinhjavaweb.controller.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
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

import com.laptrinhjavaweb.dto.EmployeeDTO;
import com.laptrinhjavaweb.entity.EmployeeEntity;
import com.laptrinhjavaweb.entity.RoleEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.service.EmployeeService;
import com.laptrinhjavaweb.service.RoleService;
import com.laptrinhjavaweb.service.UserService;

@Controller(value = "employeeControllerOfAdmin")
public class EmployeeController {
	@SuppressWarnings("unused")
	private Long idSP = null;
	private EmployeeEntity sanP = null;
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private UserService userService;
	@Autowired
	private RoleService roleService;

	@RequestMapping(value = "/manage/employee/listEmp", method = RequestMethod.GET)
	public ModelAndView listEmp(@ModelAttribute("model") EmployeeDTO model) {
		ModelAndView mav = new ModelAndView("admin/employee/listEmp");
		model.setListResult(employeeService.findAll());
		mav.addObject("emplist", model);
		return mav;
	}

	@GetMapping("/manage/employee/addEmp")
	public String themEmp(Model model) {
		EmployeeDTO sanPham = new EmployeeDTO();
		model.addAttribute("sanPham", sanPham);
		return "admin/employee/addEmp";
	}

	@PostMapping("/manage/employee/addEmp")
	public String luuEmp(@ModelAttribute("sanPham") EmployeeDTO sanPham, HttpSession session,
			BindingResult bindingResult) throws IOException {
		EmployeeEntity emp = new EmployeeEntity();
		List<RoleEntity> listuser = new ArrayList<RoleEntity>();
		UserEntity use = new UserEntity();

		emp.setName(sanPham.getName());
		emp.setAddress(sanPham.getAddress());
		emp.setEmail(sanPham.getEmail());
		emp.setPhone(sanPham.getPhone());
		emp.setSalary(sanPham.getSalary());
		use.setStatus(1);
		use.setEmployee(emp);
		use.setEmail(sanPham.getEmail());
		String hash = BCrypt.hashpw(sanPham.getUserPass(), BCrypt.gensalt(10));
		use.setPassword(hash);
		use.setUsername(sanPham.getUserName());
		emp.setUser(use);
		use.setRoles(listuser);
		userService.save(use);
		employeeService.addEmpl(emp);
		roleService.addRole(2, use.getId());
		return "redirect:/manage/employee/listEmp";
	}

	@RequestMapping("manage/employee/sua-trang-thai/{id}/{userName}/{status}")
	public String suaTrangThaiNguoiDung(@PathVariable String userName, @PathVariable long id,
			@PathVariable int status) {
		EmployeeEntity ac = employeeService.findById(id);
		UserEntity user = userService.findOneByUserNameAndStatus(userName, status);
		if (status == 1)
			user.setStatus(0);
		else
			user.setStatus(1);
		userService.save(user);
		ac.setUser(user);
		employeeService.addEmpl(ac);
		return "redirect:/manage/employee/listEmp";
	}

	@GetMapping("/manage/employee/editEmp/{id}")
	public String suaEmp(@PathVariable Long id, Model model) {
		idSP = id;
		EmployeeDTO sp = employeeService.findbyId(id);
		EmployeeEntity sanPham = employeeService.findById(id);
		sanP = sanPham;
		model.addAttribute("sp", sp);
		model.addAttribute("sanPham", sanPham);

		return "admin/employee/editEmp";
	}

	@PostMapping("/manage/employee/editEmp/luu-thong-tin")
	public String suaEmp(@ModelAttribute("sp") EmployeeDTO sp, BindingResult bindingResult) {
		sanP.setName(sp.getName());
		sanP.setEmail(sp.getEmail());
		sanP.setPhone(sp.getPhone());
		sanP.setAddress(sp.getAddress());
		sanP.setSalary(sp.getSalary());
		employeeService.addEmpl(sanP);
		return "redirect:/manage/employee/listEmp";

	}
}
