package com.health.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.health.entity.GP;

@Component
public class GPDaoImpl implements GPDao{

	@PersistenceContext
	private EntityManager em;
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<GP> findByPostcode(int postcode) {
			String str = "SELECT g FROM GP g WHERE g.postcode BETWEEN ?1 AND ?2";
			Query query = em.createQuery(str, GP.class);
			query.setParameter(1, postcode - 2);
			query.setParameter(2, postcode + 2);
			return query.getResultList();
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<GP> findBySuburb(String suburb) {
		String str = "SELECT g FROM GP g WHERE g.suburb = ?1";
		Query query = em.createQuery(str, GP.class);
		query.setParameter(1, suburb);
		return query.getResultList();
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<GP> findByPostcodeAndLanguage(int postcode, String language) {
		String str = "SELECT g FROM GP g WHERE g.postcode >= ?1 AND g.postcode <= ?2 AND g.language = ?3";
		Query query = em.createQuery(str, GP.class);
		query.setParameter(1, postcode - 2);
		query.setParameter(2, postcode + 2);
		query.setParameter(3, language);
		return query.getResultList();
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<GP> findBySuburbAndLanguage(String suburb, String language) {
		String str = "SELECT g FROM GP g WHERE g.suburb = ?1 AND g.language = ?2";
		Query query = em.createQuery(str, GP.class);
		query.setParameter(1, suburb);
		query.setParameter(2, language);
		return query.getResultList();
	}

	@Transactional
	public GP findById(int gid) {
		String str = "SELECT g FROM GP g WHERE g.gp_id = ?1";
		Query query = em.createQuery(str, GP.class);
		query.setParameter(1, gid);
		return (GP) query.getSingleResult();
	}

}
