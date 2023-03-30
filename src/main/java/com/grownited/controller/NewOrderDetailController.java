package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.OrderDetailBean;
import com.grownited.dao.OrderDetailDao;

public class NewOrderDetailController {
	
	@Autowired
	OrderDetailDaoorderdetailDao;
	
	
	@GetMapping("/newservice")
	public String newOrderDetail(Model model) {
		model.addAttribute("list",orderdetailDao.getAllOrderDetail());

		return "NewOrderDetail";
	}
	
	
	@PostMapping("/saveservice")
	public String saveOrderDetail(OrderDetailBean OrderDetailBean) {
		System.out.println(OrderDetailBean.getName());
		System.out.println(OrderDetailBean.getOrderDetailId());
		
		//dao 
		//insert 
		serviceDao.addOrderDetail(OrderDetailBean);
		return "redirect:/listservice";
		
		
	
	}

	@GetMapping("/listservice")
	public String listOrderDetail(Model model) {
		List<OrderDetailBean> listOrderDetail =orderdetailDao.getAllOrderDetail();
		model.addAttribute("listOrderDetail", listOrderDetail);
		return "ListOrderDetail";
	}
	

	@GetMapping("/deleteservice/{serviceId}")
	public String deleteOrderDetail(@PathVariable("serviceId")IntegerorderdetailId) {
		//12 45
		serviceDao.deleteOrderDetail(serviceId);
		return "redirect:/listservice"; //
	}
	@GetMapping("/viewservice/{serviceId}")

		public String viewOrderDetail(@PathVariable("serviceId")IntegerorderdetailId,Model model) {
		OrderDetailBeanorderdetailBean=serviceDao.getOrderDetailById(serviceId);
		
		model.addAttribute("serviceBean",serviceBean);
		return "ViewOrderDetail";
	}
	

}

	
	
	

	
	







	

}
