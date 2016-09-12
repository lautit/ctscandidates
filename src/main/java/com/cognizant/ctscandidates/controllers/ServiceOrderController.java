package com.cognizant.ctscandidates.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.ctscandidates.bo.Quota;
import com.cognizant.ctscandidates.bo.ServiceOrder;
import com.cognizant.ctscandidates.services.QuotaService;
import com.cognizant.ctscandidates.services.ServiceOrderService;

@RequestMapping("/serviceorder")
@Controller
public class ServiceOrderController {

	@Autowired
	ServiceOrderService serviceOrderService;
	
	@Autowired
	QuotaService quotaService;
	
	
	@RequestMapping(value = "/details")
	public String details(@RequestParam Long id, Model model){
			ServiceOrder serviceOrder= serviceOrderService.searchById(id);
			List<Quota> quotas = serviceOrder.getQuotaList();
			model.addAttribute("serviceOrder", serviceOrder);
			model.addAttribute("quotas", quotas);	
		return null;
	}

}
