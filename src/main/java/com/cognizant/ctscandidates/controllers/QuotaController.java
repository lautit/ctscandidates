package com.cognizant.ctscandidates.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cognizant.ctscandidates.bo.Event;
import com.cognizant.ctscandidates.bo.Quota;
import com.cognizant.ctscandidates.bo.ServiceOrder;
import com.cognizant.ctscandidates.bo.Timeline;
import com.cognizant.ctscandidates.services.EventService;
import com.cognizant.ctscandidates.services.QuotaService;
import com.cognizant.ctscandidates.services.ServiceOrderService;
import com.cognizant.ctscandidates.services.TimelineService;

@RequestMapping("/quota")
@Controller
public class QuotaController {
	
	@Autowired
	QuotaService quotaService;
	@Autowired
	TimelineService timelineService;//testing purposes
	@Autowired
	EventService eventService;//testing purposes
	@Autowired 
	ServiceOrderService serviceOrderService;
	
	@RequestMapping(value = "/details", method = RequestMethod.GET)
	public String details(@RequestParam Long id, Model model){
		
		Quota quota = quotaService.searchById(id);
		String message = null;
			
			//get latest event name based on event date in a list
			List<Double> eventPercentage = new ArrayList<Double>();	
			List<Event> actualEvents = new ArrayList<Event>();
		
			if(!quota.getTimelineList().isEmpty()){
			for(Timeline timeline : quota.getTimelineList()){
				
				Event lastEvent = new Event();
				
				//we get the last event in the timeline
			
				if(!timeline.getEvents().isEmpty()){
					lastEvent = timeline.getEvents().get(timeline.getEvents().size()-1);
					//we add the last event to an event list
					actualEvents.add(lastEvent);
					//then change the event name to percentage and add it to a list
					eventPercentage.add(eventService.convertNameToDouble(lastEvent.getName()));
				}else{
					//we create an event with a custom name that shows there are no events
					lastEvent.setName("No events for this timeline");
					actualEvents.add(lastEvent);
				}			
			}			
			}else{
				
				message = "No timelines have been added for this quota";
			}
			
			
			
			quotaService.save(quota);
			
			
			model.addAttribute("message", message);	
			model.addAttribute("quota", quota);	
			model.addAttribute("eventPercentage", eventPercentage);
			model.addAttribute("actualEvents", actualEvents);	
			
			

		return null;
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@RequestParam Long id,@RequestBody Quota quota, Model model) {
		
		ServiceOrder serviceOrder = serviceOrderService.searchById(id);
		
			quotaService.save(quota);
			serviceOrder.getQuotaList().add(quota);	
		
		serviceOrderService.update(serviceOrder);
		return "redirect:/serviceorder/details.html?id="+id;
	}
}
