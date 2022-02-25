package com.group1.springboot.bos.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.group1.springboot.bos.dao.CarDaoImplBos;
import com.group1.springboot.bos.model.CarBos;



@Service
@Transactional
public class CarServiceImplBos {
	
//	@Autowired
//	private CarRepository repo;
	
	@Autowired
	CarDaoImplBos CarDao;
	
//	public void delete(long id) {
//		repo.deleteById(id);
//	}

	public void save(CarBos car) {
		CarDao.save(car);
	}
	
	public List<CarBos> findAll(){
		return CarDao.findAll();
	}
	public CarBos findById(Long id) {
		return CarDao.findById(id);
	}
	
	
	public List<CarBos> queryByName(String name) {
		return CarDao.queryByName(name);
	}
	
	public void update(CarBos car) {
		CarDao.update(car);
	}

	public List<CarBos> findByName(String rname) {
		
		return CarDao.findByName(rname);
	}
	
	public void deleteCarBos(CarBos bean) {
		CarDao.deleteCarBos(bean);
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