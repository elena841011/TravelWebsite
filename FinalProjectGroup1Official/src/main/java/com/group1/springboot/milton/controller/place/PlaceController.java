package com.group1.springboot.milton.controller.place;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Blob;
import java.sql.Clob;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.group1.springboot.milton.model.Cart;
//import com.group1.springboot.milton.model.Place;
import com.group1.springboot.milton.model.ProductInfo;
import com.group1.springboot.milton.service.PlaceServiceImpl;
import com.group1.springboot.milton.service.TypeServiceImpl;
import com.group1.springboot.utils.SystemUtils;

@Controller
@SessionAttributes({"CurrentUser"})
public class PlaceController {

	@Value("\\data\\place.csv")
	String filename;
	
	@Autowired
	PlaceServiceImpl placeService;

	@Autowired
	TypeServiceImpl typeService;
	
	@Autowired
	ServletContext context;
	
	@GetMapping(value="/findAllCart", produces = "application/json; charset=UTF-8")	
	public @ResponseBody Map<String, Object> findAllCart(){
		return typeService.findAllCart(); 
	}
//	
//	@GetMapping(value="/queryByName", produces = "application/json; charset=UTF-8")	
//	public @ResponseBody Map<String, Object> queryByName(
//			@RequestParam("rname") String rname
//	){
//		//System.out.println("rname=" + rname);
//		return placeService.queryByName(rname); 
//	}
//	
//	
	@GetMapping(value="/findMamberCartById", produces = "application/json; charset=UTF-8")	
	public @ResponseBody Map<String, Object> findMamberCartById(
			@RequestParam("customerId") Integer customerId){
		return typeService.findMamberCartById(customerId); 
	}
	
	//    /findByTypeId?typeId=5&code=301.0&amt=100
	@GetMapping(value="/findByTypeId", produces = "application/json; charset=UTF-8")
	public @ResponseBody Map<String, Object> findByTypeId(
		   @RequestParam Integer typeId,
		   @RequestParam Integer code,
		   @RequestParam Integer amt
			){
		return placeService.findByType(typeId);
	}
	
	
	@GetMapping("/queryRestaurant")
	public String sendQueryRestaurant() {
		return "restaurant/queryRestaurant";
	}
	

	
}
