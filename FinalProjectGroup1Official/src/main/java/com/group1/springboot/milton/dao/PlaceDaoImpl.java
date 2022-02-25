package com.group1.springboot.milton.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.group1.springboot.milton.model.Cart;

import com.group1.springboot.milton.model.ProductInfo;


@Repository
public class PlaceDaoImpl {
	@Autowired
	EntityManager em;
	
	DataSource ds;
	
	public PlaceDaoImpl() {
//		System.out.println("---PlaceDaoImpl---------------------------------");
	}
	public void save(Cart cart) {
		em.persist(cart);
	}
	
//	@SuppressWarnings("unchecked")
//	public Map<String, Object>  findAll(){
//		Map<String, Object> map = new HashMap<>();
//		String hql = "FROM Place";
//		List<Place> list = em.createQuery(hql).getResultList();
//		map.put("size", list.size()); 
//		map.put("list", list); 
//		
//		 return map;
//	}
	
	public ProductInfo findById(Integer id){
		return em.find(ProductInfo.class, id);
	}
	
	@SuppressWarnings("unchecked")
	public ArrayList<Integer> getUserOrderId(){
		String hql = "select max(userOrderId)+1 FROM Cart ";
		ArrayList<Integer> maxid = (ArrayList<Integer>) em.createQuery(hql).getResultList();
		
		return maxid;
	}

	
//	public void update(Place place) {
//		em.merge(place);
//	}
//	
	@SuppressWarnings("unchecked")
	public Map<String, Object> findByType(Integer typeId) {
		Map<String, Object> map = new HashMap<>();
		String hql = "FROM ProductType p WHERE p.typeId = :tid";
		List<ProductInfo> list = em.createQuery(hql)
				             .setParameter("tid", typeId)
				             .getResultList();
		map.put("size", list.size());
		map.put("list", list);
		return map;
	}
//	public Map<String, Object> queryByName(String rname) {
//		Map<String, Object> map = new HashMap<>();
//		String hql = "FROM Place p WHERE p.name like :name ";
//		List<Place> list =  em.createQuery(hql, Place.class)
//		         .setParameter("name", "%" +  rname + "%")
//		         .getResultList();
//		map.put("size", list.size());
//		map.put("list", list);		
//		return map;
//	}
	
}
