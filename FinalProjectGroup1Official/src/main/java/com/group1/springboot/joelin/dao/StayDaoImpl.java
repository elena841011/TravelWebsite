package com.group1.springboot.joelin.dao;


import java.util.List;


import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.group1.springboot.joelin.model.Stay;



@Repository
public class StayDaoImpl {
	
	@Autowired 
	EntityManager em;
	
	public StayDaoImpl() {
		
	}

	public void save(Stay stay) {
		em.persist(stay);
	}
	
	@SuppressWarnings("unchecked")
	public List<Stay> findAll(){
		String hql ="FROM Stay";	
		System.out.println("*************"+em.createQuery(hql).getResultList());
		return em.createQuery(hql).getResultList();	
	}
	
	//用ID找
	public Stay findByNumber(Long number){		
		return em.find(Stay.class,number); 	
	}
	
	
	public List<Stay>queryByHotel(String rname) {
        String hql ="from Stay where hotel =:hotel";
		
        List<Stay> list = em.createQuery(hql,Stay.class)
		         .setParameter("hotel", "%"+rname+"%")
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
	
	public void update(Stay stay) {
		em.merge(stay);
	}

	public List<Stay> findByHotel(String hotel) {
		String hql = "from Stay e where e.hotel like :hotel ";
		
		List<Stay> list = em.createQuery(hql, Stay.class)
				             .setParameter("hotel",  "%" + hotel +"%")
				             .getResultList();
		System.out.println(list.size() + "," + list);
		return list;
	}
	
	public void deleteStay(Long number) {
		String hql = "delete from Stay where number =:number";
		Stay stay = em.find(Stay.class, number);
		em.remove(stay);
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
