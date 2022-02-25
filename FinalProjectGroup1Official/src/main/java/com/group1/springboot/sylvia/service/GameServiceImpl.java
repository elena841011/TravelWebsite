package com.group1.springboot.sylvia.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.group1.springboot.sylvia.dao.GameDaoImpl;
import com.group1.springboot.sylvia.model.Game;


@Service
@Transactional
public class GameServiceImpl {
    
	@Autowired
	GameDaoImpl gameDao;
	
	public void saveGame(Game game) {
		gameDao.saveGame(game);
	}
	
	
	public List<Game> findGameAll(){
		return gameDao.findGameAll();
	}
	
	public Game findbynumber(Long number){
		return gameDao.findbyGameNumber(number);
		
	}


	public void deleteGame(Long id) {
		gameDao.deleteGame(id);
		
	}
}
