package com.health.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "medical_service")
public class MedicalService {
	
	@Id
	private int medical_id;
	
	private String medical_name;
	
	private String description;

	@ManyToMany(mappedBy="services")
	private List<Hospital> hospitals;
	
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

	public List<Hospital> getHospitals() {
		return hospitals;
	}

	public void setHospitals(List<Hospital> hospitals) {
		this.hospitals = hospitals;
	}
	
}
