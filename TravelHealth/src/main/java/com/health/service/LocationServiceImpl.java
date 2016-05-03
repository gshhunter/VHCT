package com.health.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.health.dao.LocationDao;
import com.health.entity.Tlocation;

@Service("locationService")
public class LocationServiceImpl implements LocationService{

	@Autowired
	private LocationDao locationDao;
	
	@Override
	public List<Tlocation> findLocationByPostcode(int postcode) {
		return locationDao.findLocationByPostcode(postcode);
	}

	@Override
	public List<Tlocation> findLocationLikeSuburb(String suburb) {
		return locationDao.findLocationLikeSuburb(suburb);
	}

}
