package com.group1.springboot.client.controller;



import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import com.group1.springboot.sylvia.model.Event;


@Controller
public class clientController {
	
	
	@Value("\\data\\Sylvia\\EventV1.csv")
	String filename;
	
	//ClientIndex.jsp
	/*
		@GetMapping("/client")
		public String sendReadClientToInsert(Model model) {
			model.addAttribute("client",new Event());
			return "client/ClientIndex";
			
		}
		*/
		
		//query-queryEvent.jsp
				@GetMapping("/clientevent")
				public String sendReadClientEven() {
					return "client/ClientEvent";
					
				}
				
				
		//clientSpevent.jsp
				@GetMapping("/clientSpevent")
				public String sendReadClientSpEven() {
					return "client/ClientSpEvent";
					
				}
				
	/*			
				//query-queryEvent.jsp
				@GetMapping("/insertGame")
				public String sendReadGame() {
					return "sylvia/insertGame";
					
				}		
		
		
		
		@GetMapping("/clientevent")
		public String sendReadClientEvent(Model model) {
			model.addAttribute("clientevent",new Event());
			return "client/ClientEvent";
			
		}
		*/
				
			//測試
				
			
				
				
}
