package com.health.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.health.dao.GPDao;
import com.health.entity.GP;

@Service("gpService")
public class GPServiceImpl implements GPService{

	@Autowired
	private GPDao gpDao;
	
	@Override
	public List<GP> findGPByPostcode(int postcode) {
		return gpDao.findByPostcode(postcode);
	}

	@Override
	public List<GP> findGPBySuburb(String suburb) {
		return gpDao.findBySuburb(suburb);
	}

	@Override
	public List<GP> findGPByPostcodeAndLanguage(int postcode, String language) {
		return gpDao.findByPostcodeAndLanguage(postcode, language);
	}

	@Override
	public List<GP> findGPBySuburbAndLanguage(String suburb, String language) {
		return gpDao.findBySuburbAndLanguage(suburb, language);
	}

	@Override
	public GP findGPById(int gid) {
		return gpDao.findById(gid);
	}

}
