package com.health.service;

import java.util.List;

import com.health.entity.Hospital;

public interface HospitalService {
	
	/**
	 * Search health by post code
	 * @param postcode
	 * @return list
	 */
	public List<Hospital> findHospitalByPostCode(int postcode);
	
	
	/**
	 * Search health by suburb
	 * @param suburb
	 * @return list
	 */
	public List<Hospital> findHospitalBySuburb(String suburb);
	
	/**
	 * 
	 * @param postcode
	 * @param medical
	 * @return
	 */
	public List<Hospital> findHospitalByPostcodeAndMedical(String postcode, String medical);
	
	/**
	 * 
	 * @param suburb
	 * @param medical
	 * @return
	 */
	public List<Hospital> findHospitalBySuburbAndMedical(String suburb, String medical);

	/**
	 * 
	 * @param hid
	 * @return
	 */
	public Hospital findHospitalById(int hid);
	
	/**
	 * 
	 * @param postcode
	 * @return
	 */
	public List<Hospital> findEmergencyHospitalByPostcode(int postcode);
	
	/**
	 * 
	 * @param suburb
	 * @return
	 */
	public List<Hospital> findEmergencyHospitalBySuburb(String suburb);
}
