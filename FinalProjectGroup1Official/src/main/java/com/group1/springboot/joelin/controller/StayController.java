package com.group1.springboot.joelin.controller;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Blob;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.group1.springboot.joelin.Utils.SystemUtils;
import com.group1.springboot.joelin.model.Stay;
import com.group1.springboot.joelin.service.StayServiceImpl;
import com.group1.springboot.joelin.validate.StayValidator;





@Controller
public class StayController {
	
	@Value("\\data\\Joelin\\Taoyuan.csv")
	String filename;
	
	@Autowired
	StayServiceImpl stayService;
	
	@Autowired
	ServletContext context;
	
	@Autowired
	StayValidator stayValidator;
	
	@Autowired
	StayServiceImpl stayServiceImpl;
	
	@GetMapping(value="/findAll",produces = "application/json; charset=UTF-8")
	public @ResponseBody List<Stay> findAll(){
		return stayService.findAll();		
	}
	
 
    
 	@GetMapping(value="/findByNumber/{number}", produces = "application/json; charset=UTF-8")
	public @ResponseBody Stay findByNumber(@PathVariable Long number) {
		return stayService.findByNumber(number);	
	}

	
	
	@GetMapping(value="/queryByHotel", produces = "application/json; charset=UTF-8")
	public@ResponseBody List<Stay> queryByHotel(
			@RequestParam String hotel
			){
		return stayService.queryByHotel(hotel);
		
	}
	
	
	// insert後的跳轉 SAVE
		@PostMapping("/joelin")
		public String saveReadStayToInsert(Stay stay,RedirectAttributes ra,
				BindingResult result
				) {
			
			stayValidator.validate(stay, result);
			if(result.hasErrors()) {
			
				return "Joelin/readStay";
			}
			
			
			Blob blob = null;
			String mimeType  = "";
			String hotel="";
			
			MultipartFile stayImage = stay.getStayImage();
			
			
		
			
				try {
				InputStream is = stayImage.getInputStream();
			    hotel = stayImage.getOriginalFilename();
				blob = SystemUtils.inputStreamToBlob(is);
				mimeType = context.getMimeType(hotel);
				stay.setPicture(blob);
				stay.setMimeType(mimeType);
			} catch (Exception e) {
				e.printStackTrace();
			}
				
			
			
			
			
			stayService.save(stay);
			String ext = SystemUtils.getExtFilename(hotel);
			// 將上傳的檔案移到指定的資料夾, 目前註解此功能
			try {
				File imageFolder = new File(SystemUtils.Stay_IMAGE_FOLDER);
				if (!imageFolder.exists())
					imageFolder.mkdirs();
				File file = new File(imageFolder, "StayImage_" + stay.getNumber() + ext);
				stayImage.transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
			ra.addFlashAttribute("successMessage",stay.getHotel()+ "新增成功!" );
			//新增或修改成功,要用response.sendRedirect(newURL) 通知瀏覽器對newURL發出請求
			return "redirect:/queryStay";
			
			}
				
		
		
	
	@GetMapping("/insertSuccess")
	public String insertSuccess() {
		return "Joelin/insertSuccess";
		
	}
	
	@DeleteMapping("/deleteStay/{number}")
	public String deleteStay(@PathVariable("number") Long number) {
		stayService.deleteStay(number);
		return "redirect:/queryStay";
	}

	
	// 跳轉SpEventpage
	  @GetMapping("/readSpStay/{number}")
	  public String sendreadSpEventPage( 
	    @PathVariable Long number,Model model
	    ) {
	   Stay stay = stayService.findByNumber(number);
	   model.addAttribute("stay",stay);
	   return "Joelin/readSpStay";
	   
	  }
/*	
	@GetMapping(value="/shoeEvent", produces = "application/json; charset=UTF-8")
	public @ResponseBody Map<String, Object> findAll(){
		return eventService.findAll(); 
	}
*/		
	@GetMapping(value="/findByHotel", produces = "application/json; charset=UTF-8")
	public @ResponseBody List<Stay> findByHotel(
			@RequestParam(value="rname",required=false) String rname
			){
		System.out.println("rname" + rname);
		return stayService.findByHotel(rname);
	}

	
	
	//query-queryEvent.jsp
		@GetMapping("/queryStay")
		public String sendQueryStay() {
//			stayService.findAll();
			return "Joelin/queryStay";
			
		}
	
	
	
	//讀取資料
	@GetMapping("/readStay")
	public String readFile(Model model) {
		 String result = "";
		try {
			ClassPathResource cpr = new ClassPathResource(filename);
			InputStream is = cpr.getInputStream();
			InputStreamReader isr = new InputStreamReader(is);
			BufferedReader br = new BufferedReader(isr);
			
			String line = "" ;
			int count = 0;
			while((line = br.readLine())!=null) {
				//System.out.println(line) 在console印出
				//======以下是將資料放進資料庫
				String[] sa = line.split(",");
				Long number = Long.parseLong(sa[0]);
				Integer price = Integer.parseInt(sa[2].trim());
				Double longitude = Double.parseDouble(sa[3].trim());
				Double latitude = Double.parseDouble(sa[4].trim());
				
			//	Clob clob = SystemUtils.pathToClob(sa[6]);
				Blob blob = SystemUtils.pathToBlob(sa[7]);	
				String mimeType = context.getMimeType(sa[7]);
				
				Stay stay = new Stay(number,sa[1],price,longitude,latitude,sa[5],sa[6],blob,mimeType);
				
				stayService.save(stay);
				count++;
		
			}
			result = "讀取:有"+ count +"筆";
			
		} catch (Exception e) {
			
			e.printStackTrace();
			result = e.getMessage();
		}
		model.addAttribute("result", result);
		return "readStay" ;
	}
	
	
	
}


