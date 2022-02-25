package com.group1.springboot.milton.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.group1.springboot.milton.model.Cart;
import com.group1.springboot.milton.model.ProductInfo;
import com.group1.springboot.milton.model.ProductType;


@Repository
public class TypeDaoImpl {
	@Autowired
	EntityManager em;
	
	public TypeDaoImpl() {
	}
	
	public List<ProductType> findRestaurantTypes() {
		String hql = "FROM ProductType";
		List<ProductType> list = em.createQuery(hql, ProductType.class).getResultList();
		System.out.println(list);
		return list;
	}
	
	public List<ProductInfo> findProducts() {
		String hql = "FROM ProductInfo"; 
		List<ProductInfo> list = em.createQuery(hql, ProductInfo.class).getResultList();
		System.out.println(list);
		return list;
	}
	
//	public RestaurantType  findById(Integer id) {
//		return em.find(RestaurantType.class, id);
//	}

//	public void save(RestaurantType type) {
//		em.persist(type);
//	}

	public Map<String, Object> findAllCart() {
		String hql = "FROM Cart";
		Map<String, Object> map = new HashMap<>();
		try {
			List<Cart> list = em.createQuery(hql, Cart.class).getResultList();
			map.put("size", list.size());
			map.put("cart", list);
		
		} catch(Exception e) {
			map.put("error", e.getMessage());
		}
		return map;
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> findMamberCartById(Integer customerId) {
		Map<String, Object> map = new HashMap<>();
		String hql = "FROM Cart p WHERE p.customerId = :cust";
		List<ProductInfo> list = em.createQuery(hql)
	             .setParameter("cust", customerId)
	             .getResultList();
		map.put("size", list.size());
		map.put("frontOrder", list);
		return map;
	}

	
}
