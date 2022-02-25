package com.group1.springboot.bos.dao;


import java.util.List;


import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.group1.springboot.bos.model.CarBos;



@Repository
public class CarDaoImplBos {
	
	@Autowired 
	EntityManager em;
	
	public CarDaoImplBos() {
		
	}
	
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
//	public int delete(Long id) {
//		String sql="delete from WadeT1 where id="+id+"";
//		return template.update(sql);
//	}

	public void save(CarBos car) {
		em.persist(car);
	}
	
	@SuppressWarnings("unchecked")
	public List<CarBos> findAll(){
		String hql ="from CarBos";	
		return em.createQuery(hql).getResultList();	
	}
	
	//用ID找
	public CarBos findById(Long id){		
		return em.find(CarBos.class,id); 	
	}
	
	
	
	
	public List<CarBos>queryByName(String rname) {
        String hql ="from CarBos where name =:name";
		
        List<CarBos> list = em.createQuery(hql,CarBos.class)
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
	
	public void update(CarBos car) {
		em.merge(car);
	}

	public List<CarBos> findByName(String name) {
		String hql = "from CarBos e where e.name like :name ";
		
		List<CarBos> list = em.createQuery(hql, CarBos.class)
				             .setParameter("name",  "%" + name +"%")
				             .getResultList();
		System.out.println(list.size() + "," + list);
		return list;
	}
	
	
	public void deleteCarBos(CarBos bean) {
		em.remove(bean);
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
