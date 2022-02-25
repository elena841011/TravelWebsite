package com.group1.springboot.milton.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.group1.springboot.milton.dao.TypeDaoImpl;
import com.group1.springboot.milton.model.ProductInfo;
import com.group1.springboot.milton.model.ProductType;

@Service
@Transactional
public class TypeServiceImpl {

	@Autowired
	TypeDaoImpl typeDao;

//	@Autowired
//	CustomerDaoImpl customerDao;

	public List<ProductType> findRestaurantTypes() {
		return typeDao.findRestaurantTypes();
	}
	
	
	public List<ProductInfo> findProduct() {
		// TODO Auto-generated method stub
		return typeDao.findProducts();
	}
	
	
	public Map<String, Object> findAllCart() {
		return typeDao.findAllCart();
	}
	
	public Map<String, Object> findMamberCartById(Integer custId) {
		return typeDao.findMamberCartById(custId);
	}
	
//	public void update(RestaurantType type) {
//		// TODO Auto-generated method stub
//		
//	}

//	public RestaurantType findById(Integer typeId) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	public void save(RestaurantType type) {
//		typeDao.save(type);
//		
//	}

	



}
