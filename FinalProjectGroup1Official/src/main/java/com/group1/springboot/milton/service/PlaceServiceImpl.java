package com.group1.springboot.milton.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.group1.springboot.milton.dao.PlaceDaoImpl;
import com.group1.springboot.milton.dao.TypeDaoImpl;
import com.group1.springboot.milton.model.Cart;

import com.group1.springboot.milton.model.ProductInfo;


@Service
@Transactional
public class PlaceServiceImpl {
	
	public PlaceServiceImpl() {
		System.out.println("---PlaceServiceImpl---------------------------------");
	}

	@Autowired
	PlaceDaoImpl placeDao;
	
	@Autowired
	TypeDaoImpl typeDao;
	
	
	
	public void save(Cart cart) {
		
		placeDao.save(cart);
		
	}
	
	
	
//	public Map<String, Object> findAll(){
//		return placeDao.findAll();
//	}
	
	public ProductInfo findById(Integer productId){
		return placeDao.findById(productId);
	}
	
	public Map<String, Object> findByType(Integer typeId){
		return placeDao.findByType(typeId);
	}
	
//	public void update(Place place) {
//		placeDao.update(place);
//	}

//	public Map<String, Object> queryByName(String rname) {
//		return placeDao.queryByName(rname);
//	}
	public ArrayList<Integer> getUserOrderId(){
		return placeDao.getUserOrderId();
	}
	
}
