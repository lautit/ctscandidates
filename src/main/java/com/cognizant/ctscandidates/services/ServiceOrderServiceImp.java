package com.cognizant.ctscandidates.services;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cognizant.ctscandidates.dao.ServiceOrderDAO;

@Service
@Transactional
public class ServiceOrderServiceImp implements ServiceOrderService {

	private static final Logger log = Logger.
			getLogger(ServiceOrderServiceImp.class);
	
	@Autowired
	private ServiceOrderDAO serviceOrderDAO;
	
	
}
