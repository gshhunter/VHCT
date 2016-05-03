package com.health.service;

import java.util.List;

import com.health.entity.Tlocation;

public interface LocationService {

	public List<Tlocation> findLocationByPostcode(int postcode);
	
	public List<Tlocation> findLocationLikeSuburb(String suburb);
}
