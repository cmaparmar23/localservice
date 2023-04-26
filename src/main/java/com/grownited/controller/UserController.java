package com.grownited.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.grownited.bean.*;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.dao.ProductImageDao;
import com.grownited.dao.ServiceDao;
@Controller
public class UserController {
	
	@Autowired
	
	ServiceDao serviceDao;
	
	@Autowired
	ProductImageDao productImageDao;
	
	@GetMapping("/welcome")
	public String welcome(Model model) {
		List<ServiceBean>latestService=serviceDao.getAllLatestServices();
		List<ServiceBean>topSellingService=serviceDao.getAllTopSellingService();

		
		model.addAttribute("latestService",latestService);
		model.addAttribute("topSellingService",topSellingService);
		return "Welcome";
	}
	
	
	
	
	
	@GetMapping("/home")
	
public String home() {
		return "redirect:/welcome";
	}
	
	@GetMapping("/seedetails")
	public String seeDetails(@RequestParam("serviceId") Integer serviceId,Model model ) {
		ServiceBean service =serviceDao.getServiceById(serviceId);
		
		List<ProductImageBean>productImages=productImageDao.getImagesByProductId(serviceId);
		model.addAttribute("service",service);
		model.addAttribute("productImages",productImages);
		return"ServiceDetail";
	}

}