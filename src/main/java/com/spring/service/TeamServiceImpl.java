package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.TeamDAO;
import com.spring.model.TeamMember;

@Service
@Transactional
public class TeamServiceImpl implements TeamService {
	
	@Autowired
	private TeamDAO teamDAO;

	public void addTeam(TeamMember team) {
		teamDAO.addTeam(team);		
	}

	public void updateTeam(TeamMember team) {
		teamDAO.updateTeam(team);
	}

	public TeamMember getTeam(int id) {
		return teamDAO.getTeam(id);
	}

	public void deleteTeam(int id) {
		teamDAO.deleteTeam(id);
	}

	public List<TeamMember> getTeams() {
		return teamDAO.getTeams();
	}

}
