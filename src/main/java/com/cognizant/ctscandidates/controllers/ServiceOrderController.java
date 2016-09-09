package com.cognizant.ctscandidates.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cognizant.ctscandidates.services.ServiceOrderService;

@Controller
@RequestMapping("/serviceorder")
public class ServiceOrderController {

	@Autowired
	ServiceOrderService serviceOrderService;

}
