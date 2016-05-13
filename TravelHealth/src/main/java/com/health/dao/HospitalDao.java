package com.health.dao;

import java.util.List;

import com.health.entity.Hospital;

public interface HospitalDao {
	/**
	 * 
	 * @param postcode
	 * @return
	 */
	public List<Hospital> findByPostcode(int postcode);
	/**
	 * 
	 * @param suburb
	 * @return
	 */
	public List<Hospital> findBySuburb(String suburb);
	/**
	 * 
	 * @param postcode
	 * @param medical
	 * @return
	 */
	public List<Hospital> findByPostcodeAndMedicalType(String postcode, String medical);
	/**
	 * 
	 * @param suburb
	 * @param medical
	 * @return
	 */
	public List<Hospital> findBySuburbAndMedicalType(String suburb, String medical);
	/**
	 * 
	 * @param hid
	 * @return
	 */
	public Hospital findById(int hid);
	/**
	 * 
	 * @param postcode
	 * @return
	 */
	public List<Hospital> findEmergencyByPostcode(int postcode);
	/**
	 * 
	 * @param suburb
	 * @return
	 */
	public List<Hospital> findEmergencyBySuburb(String suburb);
	
	/**
	 * 
	 * @return
	 */
	public List<Hospital> findAllEmergency();
}

