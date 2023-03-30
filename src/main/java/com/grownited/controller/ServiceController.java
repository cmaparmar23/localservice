package com.grownited.controller;

import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.CategoryBean;
import com.grownited.bean.ServiceBean;
import com.grownited.bean.SubCategoryBean;
import com.grownited.bean.UserBean;
import com.grownited.dao.CategoryDao;
import com.grownited.dao.ServiceDao;
import com.grownited.dao.SubCategoryDao;
import com.grownited.dao.UserDao;


@Controller
public class ServiceController {
	
	@Autowired
	ServiceDao serviceDao;
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	SubCategoryDao subCategoryDao;
	@Autowired
	UserDao userDao;
	
	
	
	@GetMapping("/newservice")
	public String newService(Model model) {
		model.addAttribute("list", serviceDao.getAllService());
		model.addAttribute("listSubCategory",subCategoryDao.getAllSubCategory());
		model.addAttribute("listUser",userDao.getAllUser());
		model.addAttribute("list",categoryDao.getAllCategory());
		
		
		

		return "NewService";
	}
	
	
	@PostMapping("/saveservice")
	public String saveService(ServiceBean ServiceBean) {
		System.out.println(ServiceBean.getName());
		System.out.println(ServiceBean.getServiceId());
		
		//dao 
		//insert 
		serviceDao.addService(ServiceBean);
		return "redirect:/listservice";
		
		
	
	}

	@GetMapping("/listservice")
	public String listService(Model model) {
		List<ServiceBean> listService = serviceDao.getAllService();
		model.addAttribute("listService", listService);
		return "ListService";
	}
	

	@GetMapping("/deleteservice/{serviceId}")
	public String deleteService(@PathVariable("serviceId")Integer serviceId) {
		//12 45
		serviceDao.deleteService(serviceId);
		return "redirect:/listservice"; //
	}
	@GetMapping("/viewservice/{serviceId}")

		public String viewService(@PathVariable("serviceId")Integer serviceId,Model model) {
		ServiceBean serviceBean=serviceDao.getServiceById(serviceId);
		
		model.addAttribute("serviceBean",serviceBean);
		return "ViewService";
	}
	

}


	
	
	

	
	






