package com.spring.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spring.model.TeamMember;
import com.spring.service.TeamService;

@RestController
public class TeamMemersRestController {
	@Autowired
	private TeamService teamService;
	
	@RequestMapping(value="team/jsonlist")
	public ResponseEntity<List<TeamMember>> listOfTeams() {
		
		//List<TeamMember> teams = teamService.getTeams();
		List<TeamMember> teams = new ArrayList();
		TeamMember t1 = new TeamMember();
		t1.setId(new Integer(1));
		t1.setName("vishal");
		TeamMember t2 = new TeamMember();
		t2.setId(new Integer(2));
		t2.setName("Som");
		
		teams.add(t1);
		teams.add(t2);
		
		if(teams.isEmpty()){
            return new ResponseEntity<List<TeamMember>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<TeamMember>>(teams, HttpStatus.OK);
		
	}
}
 