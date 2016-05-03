package com.health.dao;

import java.util.List;

import com.health.entity.Tlocation;

public interface LocationDao {

	public List<Tlocation> findLocationByPostcode(int postcode);
	
	public List<Tlocation> findLocationLikeSuburb(String suburb);
	
}
