package com.grownited.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Controller;
import com.grownited.bean.*;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.dao.AddressDao;
import com.grownited.dao.ProductImageDao;
import com.grownited.dao.ServiceDao;
@Controller
public class UserController {
	
	@Autowired
	
	ServiceDao serviceDao;
	
	@Autowired
	ProductImageDao productImageDao;
	@Autowired
	AddressDao addressDao;
	
	@GetMapping(value = {"/","/welcome"})
	public String welcome(Model model) {
		List<ServiceBean>latestService=serviceDao.getAllLatestServices();
		List<ServiceBean>topSellingService=serviceDao.getAllTopSellingService();

		
		model.addAttribute("latestService",latestService);
		model.addAttribute("topSellingService",topSellingService);
		return "Welcome";
	}
	
	
	@PostMapping("/newaddress")
	public String newAddress() {
		return "NewAddress";
	}
	
	
	@GetMapping("/home")
	
public String home() {
		return "redirect:/welcome";
	}
	
	@GetMapping("/seedetails")
	public String seeDetails(@RequestParam("serviceId") Integer serviceId,Model model ) {
		ServiceBean service =serviceDao.getServiceById(serviceId);
		
		List<ProductImageBean>productImages=productImageDao.getImagesByServiceId(serviceId);
		model.addAttribute("service",service);
		model.addAttribute("productImages",productImages);
		return"ServiceDetail";
	}
	@GetMapping("/myaddress")
	public String myAddress(Model model,HttpSession session) {
		UserBean user = (UserBean) session.getAttribute("user");
		Integer userId = user.getUserId();
		
		List<AddressBean> address = AddressDao.getAllAddressByUser(userId);
		model.addAttribute("address",address);
		return "MyAddress";
	}

	

}