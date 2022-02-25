package com.group1.springboot.joelin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class managercontroller {

	
	 //managerindex.jsp
    @GetMapping("/managerindex")
    public String sendReadClientSpEven() {
     return "Manager/managerindex";
     
    }
	
	
}
