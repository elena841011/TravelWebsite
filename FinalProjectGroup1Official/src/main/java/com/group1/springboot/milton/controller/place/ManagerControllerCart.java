package com.group1.springboot.milton.controller.place;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ManagerControllerCart {
	

	//ClientIndex.jsp
//	@GetMapping("/ManagerIndex")
//	public String sendReadToManagerIndexCart() {
//		return "Manager/ManagerIndex";
//		
//	}
	
	@GetMapping("/shopeCarOrderPage")
	public String sendReadToShopeCarPageCart() {
		return "Milton/shopeCarPage";
		
	}
	
}
