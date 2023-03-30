package com.grownited.controller;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.CategoryBean;
import com.grownited.bean.OrderDeatailBean;
import com.grownited.bean.SubCategoryBean;
import com.grownited.dao.CategoryDao;
import com.grownited.dao.OrderDao;
import com.grownited.dao.OrderDeatailDao;
import com.grownited.dao.ServiceDao;
import com.grownited.dao.StatusDao;
import com.grownited.dao.UserDao;


@Controller

public class OrderDeatailController {
	@Autowired
	OrderDeatailDao orderdeatailDao;
	@Autowired
	OrderDao orderDao;
	@Autowired
	UserDao userDao;
	@Autowired
	ServiceDao serviceDao;
	@Autowired
	StatusDao statusDao;
	
	
	
	@GetMapping("/neworderdeatail")
	public String newOrderDeatail(Model model) {
		model.addAttribute("list", orderdeatailDao.getAllOrderDeatail());
		model.addAttribute("listOrder",orderDao.getAllOrder());
		model.addAttribute("listUser",userDao.getAllUser());
		model.addAttribute("listService",serviceDao.getAllService());
		model.addAttribute("listStatus",statusDao.getAllStatus());
		
		
		

		return "NewOrderDeatail";
	}
	
	
	@PostMapping("/saveorderdeatail")
	public String saveOrderDeatail(OrderDeatailBean OrderDeatailBean) {
		System.out.println(OrderDeatailBean.getQty());
		System.out.println(OrderDeatailBean.getPrice());
		
		//dao 
		//insert 
		orderdeatailDao.addOrderDeatail(OrderDeatailBean);
		return "redirect:/listorderdeatail";
		
		
	
	}

	@GetMapping("/listorderdeatail")
	public String listOrderDeatail(Model model) {
		List<OrderDeatailBean> listOrderDeatail = orderdeatailDao.getAllOrderDeatail();
		model.addAttribute("listOrderDeatail", listOrderDeatail);
		return "ListOrderDeatail";
	}
	

	@GetMapping("/deleteorderdeatail/{orderdeatailId}")
	public String deleteOrderDeatail(@PathVariable("orderdeatailId")Integer orderdeatailId) {
		//12 45
		orderdeatailDao.deleteOrderDeatail(orderdeatailId);
		return "redirect:/listorderdeatail"; //
	}
	@GetMapping("/vieworderdeatail/{orderdeatailId}")

		public String viewOrderDeatail(@PathVariable("orderdeatailId")Integer orderdeatailId,Model model) {
		OrderDeatailBean orderdeatailBean=orderdeatailDao.getOrderDeatailById(orderdeatailId);
		
		model.addAttribute("orderdeatailBean",orderdeatailBean);
		return "ViewOrderDeatail";
	}
	



	
	
	

	
	






}
