package com.group1.springboot.joelin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.group1.springboot.joelin.dao.StayDaoImpl;
import com.group1.springboot.joelin.model.Stay;




@Service
@Transactional
public class StayServiceImpl {
	
	@Autowired
	StayDaoImpl stayDao;
	
	@Autowired
	StayDaoImpl stayDaoImpl;

	public void save(Stay stay) {
		stayDao.save(stay);
	}
	
	public List<Stay> findAll(){
		return stayDao.findAll();
	}
	public Stay findByNumber(Long number) {
		return stayDao.findByNumber(number);
	}
	
	
	public List<Stay> queryByHotel(String hotel) {
		return stayDao.queryByHotel(hotel);
	}
	
	public void update(Stay stay) {
		stayDao.update(stay);
	}

	public List<Stay> findByHotel(String rname) {
		
		return stayDao.findByHotel(rname);
	}
	
	public void deleteStay(Long number) {
		stayDao.deleteStay(number);
	}
	
}
	/*
	public Map<String, Object> findAll(){
		return eventDao.findAll();
	}
	
	

	public Map<String, Object> queryByName(String rname) {
		return eventDao.queryByName(rname);
	}
 */