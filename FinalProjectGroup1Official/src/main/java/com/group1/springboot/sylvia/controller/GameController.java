package com.group1.springboot.sylvia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.group1.springboot.sylvia.model.Game;
import com.group1.springboot.sylvia.service.GameServiceImpl;

@Controller
public class GameController {

	@Autowired
	GameServiceImpl gameService;
	
	//查詢
	@GetMapping(value="/findGameAll",produces = "application/json; charset=UTF-8")
	public@ResponseBody List<Game> findGameAll() {
		 
		return gameService.findGameAll();
	}
	
	@GetMapping(value="/findbyGameNumber/{number}",produces = "application/json; charset=UTF-8")
	public@ResponseBody Game findbynumber(
			@PathVariable Long number
			) {
		return gameService.findbynumber(number);
	}
	
	@GetMapping("/queryGame")
	public String sendQueryGame() {
		return "Sylvia/queryGame";
		
	}
	
	@GetMapping("/insertGame")
	public String sendInsertGame(Model model) {
		model.addAttribute("Game",new Game());
		return "Sylvia/insertGame";
		
	}
	
	@GetMapping("/insertGameSuccess")
	public String insertGameSuccess() {	
		return "Sylvia/insertGameSuccess";
		
	}
	
	
	
	@PostMapping("/insertGame")
	public String saveInsertGame(Game game,RedirectAttributes ra) {
		gameService.saveGame(game);
		ra.addFlashAttribute("successMessage", game.getBoxname()+"新增成功");
		return "redirect:/insertGameSuccess";
		
	}
	
	@GetMapping("/findGame")
	public String sendToFindGame() {
		return "Sylvia/findGame";
		
	}
	
	//"<c:url value='/deleteGame/'/>"
	//刪除
	
		@DeleteMapping("/deleteGame/{id}")
		public String deleteGame(@PathVariable("id")Long id) {
			gameService.deleteGame(id);
			return "redirect:/deleteGame";
			
		}
	
	
}
