package com.cognizant.ctscandidates.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.ctscandidates.bo.Event;
import com.cognizant.ctscandidates.bo.Quota;
import com.cognizant.ctscandidates.bo.Timeline;
import com.cognizant.ctscandidates.services.EventService;
import com.cognizant.ctscandidates.services.QuotaService;
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
	
	
	@RequestMapping(value = "/details", method = RequestMethod.GET)
	public String details(@RequestParam Long id, Model model){
		
		Quota quota = quotaService.searchById(id);
<<<<<<< HEAD
		
		/*TESTING PURPOSES WITHOUT DB
		//we get the events:
		Event event1 = eventService.searchById(1L);
		Event event2 = eventService.searchById(2L);
		Event event3 = eventService.searchById(3L);

		//we get the timelines:
		Timeline timeline1 = timelineService.searchById(1L);
		Timeline timeline2 = timelineService.searchById(2L);
		
		
		timeline1.getEvents().add(event1);
		timeline1.getEvents().add(event2);
		
		timeline2.getEvents().add(event3);
*/
		
			
			
			//quota.getTimelineList().add(timeline1);
			//quota.getTimelineList().add(timeline2);
			
			
			//get latest event name based on event date in a list
			List<Double> eventPercentage = new ArrayList<Double>();	
			List<Event> actualEvents = new ArrayList<Event>();
		
			for(Timeline timeline : quota.getTimelineList()){
				
				Event lastEvent = new Event();
				
				//we get the last event in the timeline
			
				lastEvent = timeline.getEvents().get(timeline.getEvents().size()-1);
				
				//we add the last event to an event list
				actualEvents.add(lastEvent);
				//then change the event name to percentage and add it to a list
				eventPercentage.add(eventService.convertNameToDouble(lastEvent.getName()));
					
				
				
			}			
			
		
			
			quotaService.save(quota);
			
			
			
			model.addAttribute("quota", quota);	
			model.addAttribute("eventPercentage", eventPercentage);
			model.addAttribute("actualEvents", actualEvents);	
			
			
=======

		/*
		 * FOR TESTING PURPOSES WITHOUT BD //we get the events: Event event1 =
		 * eventService.searchById(1L); Event event2 =
		 * eventService.searchById(2L); Event event3 =
		 * eventService.searchById(3L); Event event4 =
		 * eventService.searchById(4L); //we get the timelines: Timeline
		 * timeline1 = timelineService.searchById(1L); Timeline timeline2 =
		 * timelineService.searchById(2L);
		 * 
		 * 
		 * timeline1.getEvents().add(event1); timeline1.getEvents().add(event2);
		 * 
		 * timeline2.getEvents().add(event3); timeline2.getEvents().add(event4);
		 * 
		 * quota.getTimelineList().add(timeline1);
		 * quota.getTimelineList().add(timeline2);
		 * 
		 * END TEST
		 */

		// get latest event name based on event date in a list
		List<Double> eventPercentage = new ArrayList<Double>();
		List<Event> actualEvents = new ArrayList<Event>();

		for (Timeline timeline : quota.getTimelineList()) {

			Event lastEvent = new Event();

			// we get the last event in the timeline
			if((timeline.getEvents().size() < 0)){
			lastEvent = timeline.getEvents().get(timeline.getEvents().size());
			}else{
				lastEvent = timeline.getEvents().get(timeline.getEvents().size() - 1);
			}
			// we add the last event to an event list
			actualEvents.add(lastEvent);
			// then change the event name to percentage and add it to a list
			eventPercentage.add(eventService.convertNameToDouble(lastEvent.getName()));

		}

		quotaService.save(quota);

		model.addAttribute("quota", quota);
		model.addAttribute("eventPercentage", eventPercentage);
		model.addAttribute("actualEvents", actualEvents);

>>>>>>> 31ddae90b5d06221b7c32f65f53d019ceeb17292
		return null;
	}

}
