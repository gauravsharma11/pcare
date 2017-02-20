package com.lakeheadu.pcare.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table
public class Report {
	
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int Id;

	@OneToOne
	private Patient patient;
	
	@Column
	private String type;
	
}
