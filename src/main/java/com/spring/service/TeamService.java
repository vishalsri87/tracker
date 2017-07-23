package com.spring.service;

import java.util.List;

import com.spring.model.TeamMember;

public interface TeamService {
	
	public void addTeam(TeamMember team);
	public void updateTeam(TeamMember team);
	public TeamMember getTeam(int id);
	public void deleteTeam(int id);
	public List<TeamMember> getTeams();

}
