package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.dao.ServiceDao;
@Controller
public class UserController {
	
	@GetMapping("/welcome")
	public String welcome(Model model)
	List <ServiceBean> latestService = ServiceDao.getAllLatestService();
	{
		return "Welcome";
	}
	
	
	
	
	
	
	@GetMapping("/home")
	
public String home() {
		return "redirect:/welcome";
	}
}