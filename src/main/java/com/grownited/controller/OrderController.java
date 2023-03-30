package com.grownited.controller;


import java.util.List;
import java.sql.Date;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.CategoryBean;
import com.grownited.bean.OrderBean;
import com.grownited.bean.SubCategoryBean;
import com.grownited.dao.AddressDao;
import com.grownited.dao.CategoryDao;
import com.grownited.dao.OrderDao;
import com.grownited.dao.StatusDao;
import com.grownited.dao.UserDao;


@Controller

public class OrderController {
	
	
	@Autowired
	OrderDao orderDao;
	
	@Autowired
	UserDao userDao;
	@Autowired
	AddressDao addressDao;
	@Autowired
	StatusDao statusDao;
	
	
	
	
	
	@GetMapping("/neworder")
	public String newOrder(Model model) {
		model.addAttribute("listUser",userDao.getAllUser());
		model.addAttribute("listAddress",addressDao.getAllAddress());
		model.addAttribute("listStatus",statusDao.getAllStatus());


		return "NewOrder";
	}
	
	
	@PostMapping("/saveorder")
	public String saveOrder(OrderBean OrderBean) {
	
		System.out.println(OrderBean.getOrderId());
		System.out.println(OrderBean.getUserId());
	
		
				
				//dao 
		
		
		//dao 
		//insert 
		orderDao.addOrder(OrderBean);
		return "redirect:/listorder";
		
		
	
	}

	@GetMapping("/listorder")
	public String listOrder(Model model) {
		List<OrderBean> listOrder = orderDao.getAllOrder();
		model.addAttribute("listOrder", listOrder);
		return "ListOrder";
	}
	

	@GetMapping("/deleteorder/{orderId}")
	public String deleteOrder(@PathVariable("orderId")Integer orderId) {
		//12 45
		orderDao.deleteOrder(orderId);
		return "redirect:/listorder"; //
	}
	

}

	
	
	
	





