package com.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.TeamMember;

@Repository
public class TeamDAOImpl implements TeamDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public void addTeam(TeamMember team) {
		getCurrentSession().save(team);
	}

	public void updateTeam(TeamMember team) {
		TeamMember teamToUpdate = getTeam(team.getId());
		teamToUpdate.setName(team.getName());
		getCurrentSession().update(teamToUpdate);
		
	}

	public TeamMember getTeam(int id) {
		TeamMember team = (TeamMember) getCurrentSession().get(TeamMember.class, id);
		return team;
	}

	public void deleteTeam(int id) {
		TeamMember team = getTeam(id);
		if (team != null)
			getCurrentSession().delete(team);
	}

	@SuppressWarnings("unchecked")
	public List<TeamMember> getTeams() {
		return getCurrentSession().createQuery("from TeamMember").list();
	}

}
