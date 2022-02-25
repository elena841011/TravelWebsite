package com.group1.springboot.bos.controller;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.group1.springboot.bos.model.CarBos;
import com.group1.springboot.bos.service.CarServiceImplBos;
import com.group1.springboot.bos.validate.CarValidatorBos;

@Controller
public class BosClient {
	
	@Autowired
	CarServiceImplBos carService;
	
	@Autowired
	ServletContext context;
	
	@Autowired
	CarValidatorBos carValidator;
	
	
	//Client
	@GetMapping("/bosClient")
	public String clientCar(Model m) {
		List<CarBos> findAll = carService.findAll();
		m.addAttribute("beanList", findAll);
		return "Bos/bosClient";
	}
}
