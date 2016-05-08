package com.health.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.health.entity.Hospital;

@Component
public class HospitalDaoImpl implements HospitalDao{
	
	@PersistenceContext
	private EntityManager em;

	/**
	 * Find hospital by post code
	 */
	@SuppressWarnings("unchecked")
	@Transactional
	@Override
	public List<Hospital> findByPostcode(int postcode) {
		try {
			String str = "SELECT h FROM Hospital h WHERE h.postcode BETWEEN ?1 AND ?2";
			Query query = em.createQuery(str);
			query.setParameter(1, postcode - 2);
			query.setParameter(2, postcode + 2);
			return query.getResultList();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			em.close();
			e.printStackTrace();
			return null;
		} finally {
			em.close();
		}
	}

	/**
	 * find hospital by suburb
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Hospital> findBySuburb(String suburb) {
		try {
			String str = "SELECT h FROM Hospital h WHERE h.suburb = :suburb";
			Query query = em.createQuery(str);
			query.setParameter("suburb", suburb);
			return query.getResultList();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			em.close();
			return null;
		} finally {
			em.close();
		}
	}

	
	/**
	 * Find hospital by post code and medical type
	 */
	@SuppressWarnings("unchecked")
	@Transactional
	@Override
	public List<Hospital> findByPostcodeAndMedicalType(String postcode, String medical) {
		String str = "SELECT * FROM Hospital h WHERE h.Postcode = ?1 AND h.Hospital_id IN " + 
			"(SELECT Hospital_id FROM Hospital_Medical hm INNER JOIN Medical_Service m ON hm.Medical_id = m.Medical_id " + 
			"WHERE m.Medical_name = ?2)";
		Query query = em.createNativeQuery(str, Hospital.class);
		query.setParameter(1, postcode);
		query.setParameter(2, medical);
		List<Hospital> results = query.getResultList();
		return results;
	}

	@SuppressWarnings("unchecked")
	@Transactional
	@Override
	public List<Hospital> findBySuburbAndMedicalType(String suburb, String medical) {
		String str = "SELECT * FROM Hospital h WHERE h.Suburb = ?1 AND h.Hospital_id IN " + 
				"(SELECT Hospital_id FROM Hospital_Medical hm INNER JOIN Medical_Service m ON hm.Medical_id = m.Medical_id " + 
				"WHERE m.Medical_name = ?2)";
		Query query = em.createNativeQuery(str, Hospital.class);
		query.setParameter(1, suburb);
		query.setParameter(2, medical);
		List<Hospital> results = query.getResultList();
		return results;
	}

	/**
	 * Search hospital by id
	 */
	@Override
	public Hospital findById(int hid) {
		try {
			String str = "FROM Hospital h WHERE h.hospital_id = ?1";
			Query query = em.createQuery(str, Hospital.class);
			query.setParameter(1, hid);
			Hospital hospital = (Hospital)query.getSingleResult();
			return hospital;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			em.close();
			e.printStackTrace();
			return null;
		} finally {
			em.close();
		}
	}

	/**
	 * Search emergency hospital by post code 
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Hospital> findEmergencyByPostcode(int postcode) {
		try {
			String str = "SELECT h FROM Hospital h WHERE h.postcode >= ?1 AND h.postcode <= ?2 AND h.isemergency = ?3";
			Query query = em.createQuery(str);
			query.setParameter(1, postcode - 2);
			query.setParameter(2, postcode + 2);
			query.setParameter(3, "YES");
			return query.getResultList();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			em.close();
			return null;
		} finally {
			em.close();
		}
	}

	/**
	 * Search emergency hospital by suburb
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Hospital> findEmergencyBySuburb(String suburb) {
		try {
			String str = "SELECT h FROM Hospital h WHERE h.suburb = ?1 AND h.isemergency = ?2";
			Query query = em.createQuery(str);
			query.setParameter(1, suburb);
			query.setParameter(2, "YES");
			return query.getResultList();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			em.close();
			return null;
		} finally {
			em.close();
		}
	}
	
	


//	@SuppressWarnings("unchecked")
//	@Transactional
//	@Override
//	public List<Hospital> findByPostcodeAndMedicalAndLanguage(String postcode, String medical, String language) {
//		String str = "SELECT * FROM Hospital h WHERE h.Postcode = ?1 AND " + 
//				"h.Hospital_id IN " +
//				"(SELECT Hospital_id FROM Hospital_Medical hm INNER JOIN Medical_Service m ON hm.Medical_id = m.Medical_id " +
//				"WHERE m.Medical_name = ?2) AND "+ 
//				"h.Hospital_id IN " +
//				"(SELECT Hospital_id FROM Hospital_Language hl INNER JOIN Language l ON hl.Language_id = l.Language_id " +
//				"WHERE l.Language_name = ?3)";
//		Query query = em.createNativeQuery(str, Hospital.class);
//		query.setParameter(1, postcode);
//		query.setParameter(2, medical);
//		query.setParameter(3, language);
//		List<Hospital> results = query.getResultList();
//		return results;
//	}
//
//	@SuppressWarnings("unchecked")
//	@Override
//	public List<Hospital> findBySuburbAndMedicalAndLanguage(String suburb, String medical, String language) {
//		String str = "SELECT * FROM Hospital h WHERE h.Suburb = ?1 AND " + 
//				"h.Hospital_id IN " +
//				"(SELECT Hospital_id FROM Hospital_Medical hm INNER JOIN Medical_Service m ON hm.Medical_id = m.Medical_id " +
//				"WHERE m.Medical_name = ?2) AND "+ 
//				"h.Hospital_id IN " +
//				"(SELECT Hospital_id FROM Hospital_Language hl INNER JOIN Language l ON hl.Language_id = l.Language_id " +
//				"WHERE l.Language_name = ?3)";
//		Query query = em.createNativeQuery(str, Hospital.class);
//		query.setParameter(1, suburb);
//		query.setParameter(2, medical);
//		query.setParameter(3, language);
//		List<Hospital> results = query.getResultList();
//		return results;
//	}

}
