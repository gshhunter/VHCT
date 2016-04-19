package com.health.service;

import java.util.List;

import com.health.entity.GP;

public interface GPService {

	/**
	 * 
	 * @param postcode
	 * @return
	 */
	public List<GP> findGPByPostcode(int postcode);
	/**
	 * 
	 * @param suburb
	 * @return
	 */
	public List<GP> findGPBySuburb(String suburb);
	/**
	 * 
	 * @param postcode
	 * @param language
	 * @return
	 */
	public List<GP> findGPByPostcodeAndLanguage(int postcode, String language);
	/**
	 * 
	 * @param suburb
	 * @param language
	 * @return
	 */
	public List<GP> findGPBySuburbAndLanguage(String suburb, String language);
	/**
	 * 
	 * @param gid
	 * @return
	 */
	public GP findGPById(int gid);
}
