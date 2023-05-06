package com.grownited.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.CategoryBean;
import com.grownited.bean.AddressBean;
import com.grownited.bean.SubCategoryBean;
import com.grownited.bean.UserBean;
import com.grownited.dao.CategoryDao;
import com.grownited.dao.UserDao;
import com.grownited.dao.AddressDao;

@Controller
public class AddressController {
	
	@Autowired
	AddressDao addressDao;
	@Autowired
	UserDao userDao;
	
	
	@GetMapping("/newaddress")
	public String newAddress(Model model) {
		model.addAttribute("list", addressDao.getAllAddress());
		model.addAttribute("listUser",userDao.getAllUser());

		return "NewAddress";
	}
	
	
		
		
	
	
	@PostMapping("/saveaddress")
	public String saveAddress(AddressBean address) {
		addressDao.addAddress(address);	
		return "redirect:/myaddress";
	}
	@GetMapping("/listaddress")
	public String listAddress(Model model) {
		List<AddressBean> listAddress = addressDao.getAllAddress();
		model.addAttribute("listAddress", listAddress);
		return "ListAddress";
	}
	

	@GetMapping("/deleteaddress/{addressId}")
	public String deleteAddress(@PathVariable("addressId")Integer addressId) {
		//12 45
		addressDao.deleteAddress(addressId);
		return "redirect:/listaddress"; //
	}
	@GetMapping("/viewaddress/{addressId}")

		public String viewAddress(@PathVariable("addressId")Integer addressId,Model model) {
		AddressBean addressBean=addressDao.getAddressById(addressId);
		
		model.addAttribute("addressBean",addressBean);
		return "ViewAddress";
	

}
	

	@GetMapping("/myaddress")
	public String myAddress(Model model,HttpSession session) {
		UserBean user = (UserBean) session.getAttribute("user");
		Integer userId = user.getUserId();
		
		List<AddressBean> address = addressDao.getAllAddressByUser(userId);
		model.addAttribute("address",address);
		return "MyAddress";
	
	
	

}

	
	
	
	
	
	
	
}