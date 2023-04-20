package com.grownited.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.bean.CartBean;
import com.grownited.bean.UserBean;

import com.grownited.dao.CartDao;
import com.grownited.dao.ServiceDao;
import com.grownited.dao.UserDao;
@Controller

public class CartController {

	@Autowired
	CartDao cartDao;
	@Autowired
	UserDao userDao;
	
	@Autowired
	ServiceDao serviceDao;
	
	
	
	@GetMapping("/newcart")
	public String newCart(Model model) {
		model.addAttribute("list", cartDao.getAllCart());
		model.addAttribute("listUser",userDao.getAllUser());
		model.addAttribute("listService",serviceDao.getAllService());
		

		return "NewCart";
	}
	
	
	@PostMapping("/savecart")
	public String saveCart(CartBean CartBean) {
		System.out.println(CartBean.getQty());
		System.out.println(CartBean.getCartId());
		
		//dao 
		//insert 
		cartDao.addToCart(CartBean);
		return "redirect:/listcart";
		
		
	
	}

	@GetMapping("/listcart")
	public String listCart(Model model) {
		List<CartBean> listCart = cartDao.getAllCart();
		model.addAttribute("listCart", listCart);
		return "ListCart";
	}
	

	@GetMapping("/deletecart/{cartId}")
	public String deleteCart(@PathVariable("cartId")Integer cartId) {
		//12 45
		cartDao.deleteCart(cartId);
		return "redirect:/listcart"; //
	}
	
	@GetMapping("/viewcart/{cartId}")

	public String viewCart(@PathVariable("cartId")Integer cartId,Model model) {
	CartBean cartBean=cartDao.getCartById(cartId);
	
	model.addAttribute("cartBean",cartBean);
	return "ViewCart";
}
@GetMapping("/addtocart")
public String addtocart(@RequestParam("serviceId") Integer serviceId,HttpSession session, HttpServletRequest request) {
	
	
	Integer userId =-1;
	CartBean cart = new CartBean();
	UserBean user = (UserBean) session.getAttribute("user");
	userId = user.getUserId();
	
	System.out.println("REferer => "+request.getHeader("refer"));
	cart.setServiceId(serviceId);
	cart.setQty(1);
	cart.setUserId(userId);
	return "";
}
	

}

	
	

	
	
	
	

