package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.TeamMember;
import com.spring.service.TeamService;

@Controller
@RequestMapping(value="/team")
public class TeamMemberController {
	
	@Autowired
	private TeamService teamService;
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public ModelAndView addTeamPage() {
		ModelAndView modelAndView = new ModelAndView("add-team-form");
		modelAndView.addObject("team", new TeamMember());
		return modelAndView;
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public ModelAndView addingTeam(@ModelAttribute TeamMember teamMember) {
		
		ModelAndView modelAndView = new ModelAndView("home");
		teamService.addTeam(teamMember);
		
		String message = "Team was successfully added.";
		modelAndView.addObject("message", message);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/list")
	public ModelAndView listOfTeams() {
		ModelAndView modelAndView = new ModelAndView("list-of-teams");
		
		List<TeamMember> teams = teamService.getTeams();
		modelAndView.addObject("teamMember", teams);
		
		return modelAndView;
	}
	
	
	
	
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public ModelAndView editTeamPage(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("edit-team-form");
		TeamMember team = teamService.getTeam(id);
		modelAndView.addObject("teamMember",team);
		return modelAndView;
	}
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.POST)
	public ModelAndView edditingTeam(@ModelAttribute TeamMember team, @PathVariable Integer id) {
		
		ModelAndView modelAndView = new ModelAndView("home");
		
		teamService.updateTeam(team);
		
		String message = "Team was successfully edited.";
		modelAndView.addObject("message", message);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public ModelAndView deleteTeam(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("home");
		teamService.deleteTeam(id);
		String message = "Team was successfully deleted.";
		modelAndView.addObject("message", message);
		return modelAndView;
	}

}
