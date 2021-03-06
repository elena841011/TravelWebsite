package com.group1.springboot.joelin.controller;

import java.io.File;

import java.io.InputStream;
import java.sql.Blob;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.group1.springboot.joelin.Utils.SystemUtils;
import com.group1.springboot.joelin.model.Stay;
import com.group1.springboot.joelin.service.StayServiceImpl;
import com.group1.springboot.joelin.validate.StayValidator;



@Controller
public class StayFindViewController {

	@Autowired
	StayServiceImpl stayService;
	
	@Autowired
	StayValidator stayValidator;
	
	@Autowired
	ServletContext context;
	
	//insert-readEvent.jsp
	@GetMapping("/joelin")
	public String sendReadStayToInsert(Model model) {
		model.addAttribute("joelin",new Stay());
		return "Joelin/readStay";
		
	}
	
	
	
	@ModelAttribute("stay")
	public Stay getStay(@RequestParam(value="number", required = false )  Long number) {
		Stay stay = null;
		if (number != null) {
			System.out.println("PASTDATA===================================");
			stay = stayService.findByNumber(number);
		} else {
			stay = new Stay();
		}
		System.out.println("In @ModelAttribute, stay=" + stay);
		return stay;
		
	}
//	@ModelAttribute("stay")
//	public Stay getStay(@RequestParam(value="Id", required = false )  Long number) {
//
//		Stay stay = new Stay();
//		
//		System.out.println("In @ModelAttribute, stay=" + stay);
//		return stay;
//		
//	}
	 
	@PostMapping("/modifyStay/{Number}")
	public String updateStay( @ModelAttribute("stay") Stay stay ,
			BindingResult result , 
			RedirectAttributes ra) {
	
		stayValidator.validate(stay, result);
	if(result.hasErrors()) {
		
		List<ObjectError> list = result.getAllErrors();
		for(ObjectError error:list) {
			System.out.println("?????????"+error);
		}   
		return "redirect:/editStay";	
	}
	Blob blob = null;
	String mimeType = "";
	String hotel = "";
	MultipartFile stayImage = stay.getStayImage();
	
	System.out.println(" size=    " + stayImage.getSize());
	System.out.println(" big=    " + stayImage);
	
	if (stayImage != null && stayImage.getSize() > 0) {
		
		try {
			InputStream is = stayImage.getInputStream();
			hotel = stayImage.getOriginalFilename();
			blob = SystemUtils.inputStreamToBlob(is);
			mimeType = context.getMimeType(hotel);
			System.out.println("123123213D21321321321332");
			stay.setPicture(blob);
			stay.setMimeType(mimeType);
			
			String ext = SystemUtils.getExtFilename(hotel);
			// ??????????????????????????????????????????, ?????????????????????
			try {
				File imageFolder = new File(SystemUtils.Stay_IMAGE_FOLDER);
				if (!imageFolder.exists())
					imageFolder.mkdirs();
				File file = new File(imageFolder, "StayImage_" + stay.getNumber() + ext);
				stayImage.transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("????????????????????????: " + e.getMessage());
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	stayService.update(stay);
	ra.addFlashAttribute("successMessage", stay.getHotel() + "????????????");
	// ??????????????????????????????response.sendRedirect(newURL) ??????????????????newURL????????????
	return "redirect:/queryStay";  
	
	
}

	// ????????????page
	@GetMapping("/modifyStay/{number}")
	public String sendEditPage( 
			@PathVariable Long number,Model model
			) {
		Stay stay = stayService.findByNumber(number);
		model.addAttribute("stay",stay);
		return "Joelin/editStay";
		
	}
	
	
	
	
	


}
