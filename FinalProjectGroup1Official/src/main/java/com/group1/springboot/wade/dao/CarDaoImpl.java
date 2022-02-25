package com.group1.springboot.wade.dao;


import java.util.List;


import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.group1.springboot.wade.model.Car;

import antlr.debug.Event;



@Repository
public class CarDaoImpl {
	
	@Autowired 
	EntityManager em;
	
	public CarDaoImpl() {
		
	}
	
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	

	public void save(Car car) {
		em.persist(car);
	}
	
	@SuppressWarnings("unchecked")
	public List<Car> findAll(){
		String hql ="from Car";	
		return em.createQuery(hql).getResultList();	
	}
	
	//用ID找
	public Car findById(Long id){		
		return em.find(Car.class,id); 	
	}
	
	
	
	
	public List<Car>queryByName(String rname) {
        String hql ="from Car where name =:name";
		
        List<Car> list = em.createQuery(hql,Car.class)
		         .setParameter("name", "%"+rname+"%")
		         .getResultList();
        System.out.println(list.size()+","+list);
	return list;
	}
	
	//用name找
	/*
	@SuppressWarnings("unchecked")
	public List<Event> queryByName(String rname) {
		String hql ="from Event where name =:name";
		
		return em.createQuery(hql)
		         .setParameter("name", "%"+rname+"%").getResultList();		
		
		//修改
		
	}
	
	*/
	
	public void update(Car car) {
		em.merge(car);
	}

	public List<Car> findByName(String name) {
		String hql = "from Car e where e.name like :name ";
		
		List<Car> list = em.createQuery(hql, Car.class)
				             .setParameter("name",  "%" + name +"%")
				             .getResultList();
		System.out.println(list.size() + "," + list);
		return list;
	}
	
	public void deleteCar(Car bean) {
		em.remove(bean);
	}
//	public void deleteCar(Long id) {
//		String hql="delete from WadeT1 where id =:id";
//		Car car = em.find(Car.class, id);
//		
//		em.remove(car);
//	}



	public List<Car> searchClient(String date, String address) {
		String sql = "from Car where date = :date and address = :address";
		TypedQuery<Car> query = em.createQuery(sql, Car.class);
		query.setParameter("date", date);
		query.setParameter("address", address);
		
		return query.getResultList();
	}
}
	/*------------------------------------------------
	//找全部
	
	@SuppressWarnings("unchecked")
	public Map<String,Object> findAll(){
		Map<String,Object> map = new HashMap<>(); 
		String hql = "FROM Place";
		List<Event> list = em.createQuery(hql).getResultList();
		map.put("size",list.size());
		map.put("list",list);
		return map;
	}
	
	
	
	
	
	//用name找
	
	public Map<String , Object> queryByName(String rname ){
		Map<String , Object> map = new HashMap<>();
		String hql = "FROM EVENT e WHERE e.name like :name ";
		List<Event> list = em.createQuery(hql, Event.class)
				             .setParameter("name",  "%" + rname +"%")
				             .getResultList();
		map.put("size", list.size());
		map.put("list", list);
		return map;
		
	}
*/
