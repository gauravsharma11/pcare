package com.lakeheadu.pcare.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonIgnore;

@Entity
@Table
public class Drug 
{
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@JsonIgnore
	private int id;
	
	@Column
	private String name;
	
	@Column
	private String form;
	
	@Column
	private int quantity;
	
	@Column
	private String directions;
	
	
	public Drug()
	{
		
	}
	
	public Drug(String name, String strength, String form, int quantity, String directions) {
		super();
		this.name = name;
		this.form = form;
		this.quantity = quantity;
		this.directions = directions;
	}
	
	@JsonIgnore
	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getForm() {
		return form;
	}

	public void setForm(String form) {
		this.form = form;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getDirections() {
		return directions;
	}

	public void setDirections(String directions) {
		this.directions = directions;
	}
	
	
}
