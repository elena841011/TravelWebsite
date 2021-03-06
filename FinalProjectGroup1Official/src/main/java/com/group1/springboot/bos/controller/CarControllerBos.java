package com.group1.springboot.bos.controller;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Blob;
import java.sql.Clob;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.group1.springboot.bos.Utils.SystemUtils;
import com.group1.springboot.bos.model.CarBos;
import com.group1.springboot.bos.service.CarServiceImplBos;
import com.group1.springboot.bos.validate.CarValidatorBos;





@Controller
public class CarControllerBos {
	
	@Value("\\data\\bos\\CarT1.csv")
	String filename;
	
	@Autowired
	CarServiceImplBos carService;
	
	@Autowired
	ServletContext context;
	
	@Autowired
	CarValidatorBos carValidator;
	
	
	
	@GetMapping(value="/findAllBos",produces = "application/json; charset=UTF-8")
	public @ResponseBody List<CarBos> findAll(){
		return carService.findAll();		
	}
	
    
	@GetMapping(value="/findByIdBos/{id}", produces = "application/json; charset=UTF-8")
	public @ResponseBody CarBos findById(@PathVariable Long id) {
		return carService.findById(id);	
	}

	
	
	@GetMapping(value="/queryByNameBos", produces = "application/json; charset=UTF-8")
	public@ResponseBody List<CarBos> queryByName(
			@RequestParam String name
			){
		return carService.queryByName(name);
		
	}
	
	@PostMapping("/deleteCarBos")
	public @ResponseBody Boolean deleteCarBos(@RequestParam Long blogId ) {
		Boolean result = true;
		
		try {
			CarBos bean = carService.findById(blogId);
			System.out.println(bean);
			carService.deleteCarBos(bean);
		} catch (Exception e) {
			e.printStackTrace();
			result = false;
		}
		
		return result;
	}
	
	
//	@RequestMapping(value="/deletecar/{id}",method = RequestMethod.GET)
//	public String delete(@PathVariable Long id) {
//		return "redirect:/queryCar";
//	}
	


		// insert???????????? SAVE
		@PostMapping("/bos")
		public String saveReadCarToInsert(CarBos car,RedirectAttributes ra,
				BindingResult result
				) {
			
			carValidator.validate(car, result);
			if(result.hasErrors()) {
			
				return "Bos/readCarBos";
			}
			
			
			Blob blob = null;
			String mimeType  = "";
			String name="";
			
			MultipartFile carImage = car.getCarImage();
			
			try {
				InputStream is = carImage.getInputStream();
			    name = carImage.getOriginalFilename();
				blob = SystemUtils.inputStreamToBlob(is);
				mimeType = context.getMimeType(name);
				car.setPicture(blob);
				car.setMimeType(mimeType);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			carService.save(car);
			String ext = SystemUtils.getExtFilename(name);
			// ??????????????????????????????????????????, ?????????????????????
			try {
				File imageFolder = new File(SystemUtils.CAR_IMAGE_FOLDER);
				if (!imageFolder.exists())
					imageFolder.mkdirs();
				File file = new File(imageFolder, "CarImage_" + car.getId() + ext);
				carImage.transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("????????????????????????: " + e.getMessage());
			}
			ra.addFlashAttribute("successMessage",car.getName()+ "????????????!" );
			//?????????????????????,??????response.sendRedirect(newURL) ??????????????????newURL????????????
			return "redirect:/queryCarBos";	
		} 
		
	
	@GetMapping("/insertSuccessBos")
	public String insertSuccess() {
		return "Bos/insertSuccessBos";
		
	}
	
	
/*	
	@GetMapping(value="/shoeEvent", produces = "application/json; charset=UTF-8")
	public @ResponseBody Map<String, Object> findAll(){
		return eventService.findAll(); 
	}
*/		
	@GetMapping(value="/findByNameBos", produces = "application/json; charset=UTF-8")
	public @ResponseBody List<CarBos> findByName(
			@RequestParam(value="rname",required=false) String rname
			){
		System.out.println("rname" + rname);
		return carService.findByName(rname);
	}

	
	
	


		//query-queryEvent.jsp
		@GetMapping("/queryCarBos")
		public String sendQueryCar() {
			return "Bos/queryCarBos";
			
		}
	
	
	
	//????????????
//	@GetMapping("/readCarBos")
//	public String readFile(Model model) {
//		 String result = "";
//		try {
//			ClassPathResource cpr = new ClassPathResource(filename);
//			InputStream is = cpr.getInputStream();
//			InputStreamReader isr = new InputStreamReader(is);
//			BufferedReader br = new BufferedReader(isr);
//			
//			String line = "" ;
//			int count = 0;
//			while((line = br.readLine())!=null) {
//				//System.out.println(line) ???console??????
//				//======?????????????????????????????????
//				String[] sa = line.split(",");
//				Long id = Long.parseLong(sa[0]);
//				Integer price = Integer.parseInt(sa[2]);
//				Integer seat = Integer.parseInt(sa[3]);
//				Double suitcase = Double.parseDouble(sa[4].trim());
//				Double handbag = Double.parseDouble(sa[5].trim());
//				
//			//	Clob clob = SystemUtils.pathToClob(sa[6]);
//				Blob blob = SystemUtils.pathToBlob(sa[8]);	
//				String mimeType = context.getMimeType(sa[8]);
//				
//				CarBos car = new CarBos(id,sa[1],price,seat,suitcase,handbag,sa[6],sa[7],blob,mimeType);
//				
//				carService.save(car);
//				count++;
//		
//			}
//			result = "??????:???"+ count +"???";
//			
//		} catch (Exception e) {
//			
//			e.printStackTrace();
//			result = e.getMessage();
//		}
//		model.addAttribute("result", result);
//		return "readCar" ;
//	}
	
	
	
}


