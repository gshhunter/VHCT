package com.health.entity;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "tlocation")
public class Tlocation implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -3125823142929367245L;

	@Id
	@GeneratedValue
	private int location_id;
	
	private int postcode;
	
	private String suburb;

	private String locality;
	
	private String latitude;
	
	private String longitude;
	
	public int getLocation_id() {
		return location_id;
	}

	public void setLocation_id(int location_id) {
		this.location_id = location_id;
	}

	public int getPostcode() {
		return postcode;
	}

	public void setPostcode(int postcode) {
		this.postcode = postcode;
	}

	public String getSuburb() {
		return suburb;
	}

	public void setSuburb(String suburb) {
		this.suburb = suburb;
	}

	public String getLocality() {
		return locality;
	}

	public void setLocality(String locality) {
		this.locality = locality;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	
	
}
