package com.group1.springboot.elena.login.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BaseLoginController {
//首頁導到登入畫面的mapping
	
		@GetMapping("/elena")     //一定要是GetMapping, GetMapping之後的路徑請自己取（不能跟我一樣）
		public String index() {   // 這行請修改index() 即可，改成隨便的方法名（例如hotelPage)，其他部分請寫跟我一樣
			return "Elena/login"; //這邊請寫 return "自己資料夾名稱/jsp的名稱(想要導到的那頁)" 
		}
		
		


}
