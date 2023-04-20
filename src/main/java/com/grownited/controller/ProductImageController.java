package com.grownited.controller;
import java.io.File;
import java.io.FileWriter;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.bean.ProductImageBean;
import com.grownited.dao.ServiceDao;
import com.grownited.dao.ProductImageDao;

@Controller

public class ProductImageController {
	@Autowired
	ProductImageDao productImageDao;

	@Autowired
	ServiceDao serviceDao;

	@GetMapping("/newproductimage")
	public String newProductImage(Model model) {
		model.addAttribute("service", serviceDao.getAllService());
		return "NewProductImage";
	}

	@PostMapping("/saveproductimage")
	public String saveProductImage(ProductImageBean pb) {
		productImageDao.saveProductImage(pb);
		return "redirect:/listproductimage";
	}

	@GetMapping("/listproductimage")
	public String listProductImage(Model model) {
		model.addAttribute("productimages", productImageDao.getAllProductImages());
		return "ListProductImage";
	}

	@GetMapping("/deleteproductimage")
	public String deleteImage(@RequestParam("productImageId") Integer productImageId) {
		productImageDao.deleteProductImage(productImageId);
		return "redirect:/listproductimage";
	}

}
