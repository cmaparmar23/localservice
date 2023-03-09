package com.grownited.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Cookie;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.PathVariable;
import com.grownited.bean.CategoryBean;
import com.grownited.dao.CategoryDao;

@Controller
public class CategoryController {
	
	
	
	
	
	@Autowired
	CategoryDao categoryDao;
	
	@GetMapping("/newcategory") //url
	public String newCategory(HttpServletRequest request) {    // method
		
		//cookie name
		//cookie userid
		int userId=1;
		
		// read all cookies from request
		String firstName="";
		
		Cookie[] c = request.getCookies();// jsEssionId userId octo firstname
		
		
		for (Cookie x:c) { //jsessionid userId firstname 
			if(x.getName().equals("userId")) {
				userId =  Integer.parseInt(x.getValue());
				
			}
			
			if(x.getName().equals("fisrtName")) {
				firstName = x.getValue();
			}
		}
		
		System.out.println("userId->"+ userId);
		System.out.println("firstName->"+firstName);
		
		
		
		
		
		
		
		
		
		return "NewCategory"; // jsp----open
		
	}
	
	
	@PostMapping("/savecategory")
	public String saveCategory(CategoryBean categoryBean) {
		System.out.println(categoryBean.getCategoryName());
		categoryDao.addCategory(categoryBean);
		return "redirect:/listcategories";
	}
	@GetMapping("/listcategories")
	public String listCategories(Model model)
	{

		//pull all category from db tabel
List<CategoryBean> list = categoryDao.getAllCategory();
		model.addAttribute("list",list);
		return "ListCategory";
	}
	
	@GetMapping("/deletecategory/{categoryId}")
	public String deleteCategory(@PathVariable("categoryId")Integer categoryId) {
		//12 45
		categoryDao.deleteCategory(categoryId);
		return "redirect:/listcategories"; //
	}
	@GetMapping("/viewcategory/{categoryId}")

		public String viewCategory(@PathVariable("categoryId")Integer categoryId,Model model) {
		CategoryBean categoryBean=categoryDao.getCategoryById(categoryId);
		model.addAttribute("categoryBean",categoryBean);
		return "ViewCategory";
	}
	

}

