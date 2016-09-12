package com.cognizant.ctscandidates.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cognizant.ctscandidates.bo.Quota;
import com.cognizant.ctscandidates.services.QuotaService;

@RequestMapping("/quota")
@Controller
public class QuotaController {
	
	@Autowired
	QuotaService quotaService;
	
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String details(Model model){
			List<Quota> quotas = quotaService.getAll();
			model.addAttribute("quotas", quotas);	
		return null;
	}

}
