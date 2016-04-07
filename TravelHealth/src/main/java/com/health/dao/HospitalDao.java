package com.health.dao;

import java.util.List;

import com.health.entity.Hospital;

public interface HospitalDao {
	/**
	 * 
	 * @param postcode
	 * @return
	 */
	public List<Hospital> findByPostcode(String postcode);
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
	
}
