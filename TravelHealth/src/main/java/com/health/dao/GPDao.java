package com.health.dao;

import java.util.List;

import com.health.entity.GP;

public interface GPDao {
    /**
     * 
     * @param postcode
     * @return
     */
	public List<GP> findByPostcode(int postcode);
	/**
	 * 
	 * @param suburb
	 * @return
	 */
	public List<GP> findBySuburb(String suburb);
	/**
	 * 
	 * @param postcode
	 * @param language
	 * @return
	 */
	public List<GP> findByPostcodeAndLanguage(int postcode, String language);
	/**
	 * 
	 * @param suburb
	 * @param language
	 * @return
	 */
	public List<GP> findBySuburbAndLanguage(String suburb, String language);
	/**
	 * 
	 * @param id
	 * @return
	 */
	public GP findById(int gid);
}
