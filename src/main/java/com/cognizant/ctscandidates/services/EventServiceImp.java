package com.cognizant.ctscandidates.services;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cognizant.ctscandidates.bo.Event;
import com.cognizant.ctscandidates.dao.EventDAO;

@Service
@Transactional
public class EventServiceImp implements EventService{

	@Autowired
	private EventDAO eventDAO;
	@Override
	public Long save(Event event){
		return eventDAO.save(event);
	}
	@Override
	public void update(Event event){
		eventDAO.update(event);
	}
	@Override
	public void delete(Long id) {
		eventDAO.delete(id);
	}
	@Override
	public Event searchById(Long id) {
		return eventDAO.searchById(id);
	}
	@Override
	public List<Event> getAll() {
		return eventDAO.getAll();
	}

	@Override
	public List<Event> getAll(int page, int rows) {

		return eventDAO.getAll();
	}

	@Override
	public Long count() {
		return eventDAO.count();
	}
	
	
	
	
	
}
