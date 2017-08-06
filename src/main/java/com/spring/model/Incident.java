package com.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "incidents")
public class Incident {

	@Id
	@GeneratedValue
	private Integer id;

	private String issue;
	private String incNumber;
	private String description;
	private String resolution;
	@OneToOne
    @JoinColumn(name = "send_by_id")
	private SendBy sendBy;
	@OneToOne
	private Priority priority;
	@OneToOne
	private IncStatus status;
	@OneToOne
	@JoinColumn(name = "solved_by_id")
	private TcsDevs solveBy;
	@Column(name = "issue_raised")
	@Temporal(TemporalType.TIMESTAMP)
	private java.util.Date issueDate;
	@Column(name = "pick_by_tcs")
	@Temporal(TemporalType.TIMESTAMP)
	private java.util.Date pickByTcs;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getIssue() {
		return issue;
	}
	public void setIssue(String issue) {
		this.issue = issue;
	}
	public String getIncNumber() {
		return incNumber;
	}
	public void setIncNumber(String incNumber) {
		this.incNumber = incNumber;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getResolution() {
		return resolution;
	}
	public void setResolution(String resolution) {
		this.resolution = resolution;
	}
	public SendBy getSendBy() {
		return sendBy;
	}
	public void setSendBy(SendBy sendBy) {
		this.sendBy = sendBy;
	}
	public Priority getPriority() {
		return priority;
	}
	public void setPriority(Priority priority) {
		this.priority = priority;
	}
	public IncStatus getIncStatus() {
		return status;
	}
	public void setIncStatus(IncStatus status) {
		this.status = status;
	}
	public TcsDevs getSolveBy() {
		return solveBy;
	}
	public void setSolveBy(TcsDevs solveBy) {
		this.solveBy = solveBy;
	}
	public java.util.Date getIssueDate() {
		return issueDate;
	}
	public void setIssueDate(java.util.Date issueDate) {
		this.issueDate = issueDate;
	}
	public java.util.Date getPickByTcs() {
		return pickByTcs;
	}
	public void setPickByTcs(java.util.Date pickByTcs) {
		this.pickByTcs = pickByTcs;
	}

	
	
}
