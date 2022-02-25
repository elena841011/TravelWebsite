package com.group1.springboot.sylvia.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.group1.springboot.sylvia.model.Event;
import com.group1.springboot.sylvia.model.Game;

@Repository
public class GameDaoImpl {

	@Autowired 
	EntityManager em;
	
	public GameDaoImpl() {
		
	}
	
	public void saveGame(Game game) {
		em.persist(game);
	}
	
	//查詢
	
	@SuppressWarnings("unchecked")
	public List<Game> findGameAll(){
		String hql ="from Game";
		return em.createQuery(hql).getResultList();	
	}
	
	public Game findbyGameNumber(Long number){
		return em.find(Game.class, number);
		
	}

	@SuppressWarnings("unused")
	public void deleteGame(Long id) {
		String hql ="delete from Game where id =:id";
		Game game = em.find(Game.class, id);

		em.remove(game);
	}
	
}
