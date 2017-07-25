package com.spring.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "incident")
public class Incident {

	@Id
	@GeneratedValue
	private Integer id;

	private String issue;
	private String incNumber;
	private String sendBy;
	private String priority;
	private String status;
	private String solveBy;

	private String description;
	private String resolution;
	private java.util.Date issueDate;
	private java.util.Date pickByTcs;

}
