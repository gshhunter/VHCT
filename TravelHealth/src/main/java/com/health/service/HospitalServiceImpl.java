package com.health.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.health.dao.HospitalDao;
import com.health.entity.Hospital;

@Service("hospitalService")
public class HospitalServiceImpl implements HospitalService{
	
	@Autowired
	private HospitalDao hospitalDao;
	
	@Transactional
	public List<Hospital> findHospitalByPostCode(int postcode) {
		return hospitalDao.findByPostcode(postcode);
	}

	@Transactional
	public List<Hospital> findHospitalBySuburb(String suburb) {
		return hospitalDao.findBySuburb(suburb);
	}

	@Transactional
	public List<Hospital> findHospitalByPostcodeAndMedical(String postcode, String medical) {
		return hospitalDao.findByPostcodeAndMedicalType(postcode, medical);
	}

	@Transactional
	public List<Hospital> findHospitalBySuburbAndMedical(String suburb, String medical) {
		return hospitalDao.findBySuburbAndMedicalType(suburb, medical);
	}

	@Transactional
	public Hospital findHospitalById(int hid) {
		return hospitalDao.findById(hid);
	}

	@Transactional
	public List<Hospital> findEmergencyHospitalByPostcode(int postcode) {
		return hospitalDao.findEmergencyByPostcode(postcode);
	}

	@Transactional
	public List<Hospital> findEmergencyHospitalBySuburb(String suburb) {
		return hospitalDao.findEmergencyBySuburb(suburb);
	}

	@Transactional
	public List<Hospital> findAllEmergency() {
		return hospitalDao.findAllEmergency();
	}

	
}
