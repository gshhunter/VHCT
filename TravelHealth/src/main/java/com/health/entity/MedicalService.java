package com.health.entity;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "medical_service")
public class MedicalService {
	
	@Id
	@GeneratedValue
	private int medical_id;
	
	private String medical_name;
	
	private String description;
	
	public int getMedical_id() {
		return medical_id;
	}

	public void setMedical_id(int medical_id) {
		this.medical_id = medical_id;
	}

	public String getMedical_name() {
		return medical_name;
	}

	public void setMedical_name(String medical_name) {
		this.medical_name = medical_name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
