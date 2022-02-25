package com.group1.springboot.sylvia.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ManagerController {
	

	//ClientIndex.jsp
	@GetMapping("/ManagerIndex")
	public String sendReadToManagerIndex() {
		return "Manager/ManagerIndex";
		
	}
	
	
}
