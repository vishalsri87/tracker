package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spring.model.Incident;
import com.spring.service.IncidentService;
@RestController
public class IncidentController {
	@Autowired
	private IncidentService incService;
	
	@RequestMapping(value="inc/jsonlist")
	public ResponseEntity<List<Incident>> listOfIncidents() {
		
		List<Incident> inc = incService.getAllIncident();
		/*List<TeamMember> teams = new ArrayList();
		TeamMember t1 = new TeamMember();
		t1.setId(new Integer(1));
		t1.setName("vishal");
		TeamMember t2 = new TeamMember();
		t2.setId(new Integer(2));
		t2.setName("Som");
		
		teams.add(t1);
		teams.add(t2);*/
		
		if(inc.isEmpty()){
            return new ResponseEntity<List<Incident>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<Incident>>(inc, HttpStatus.OK);
		
	}
}
