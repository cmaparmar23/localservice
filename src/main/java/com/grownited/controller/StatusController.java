package com.grownited.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.StatusBean;
import com.grownited.bean.StatusBean;


import com.grownited.dao.StatusDao;
@Controller

public class StatusController {
	@Autowired
	StatusDao statusDao;
	
	
	@GetMapping("/newstatus")
	public String newStatus(Model model) {
		model.addAttribute("list", statusDao.getAllStatus());

		return "NewStatus";
	}
	
	
	@PostMapping("/savestatus")
	public String saveStatus(StatusBean StatusBean) {
		
		System.out.println(StatusBean.getStatusId());
		
		//dao 
		//insert 
		statusDao.addStatus(StatusBean);
		return "redirect:/liststatus";
		
		
	
	}

	@GetMapping("/liststatus")
	public String listStatus(Model model) {
		List<StatusBean> listStatus = statusDao.getAllStatus();
		model.addAttribute("listStatus", listStatus);
		return "ListStatus";
	}
	

	@GetMapping("/deletestatus/{statusId}")
	public String deleteStatus(@PathVariable("statusId")Integer statusId) {
		//12 45
		statusDao.deleteStatus(statusId);
		return "redirect:/liststatus"; //
	}
	@GetMapping("/viewstatus/{statusId}")

	public String viewStatus(@PathVariable("statusId")Integer statusId,Model model) {
	StatusBean statusBean=statusDao.getStatusById(statusId);
	
	model.addAttribute("statusBean",statusBean);
	return "ViewStatus";
}


}

	
	



	
	
