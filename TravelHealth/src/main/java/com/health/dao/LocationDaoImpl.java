package com.health.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.health.entity.Tlocation;

@Component
public class LocationDaoImpl implements LocationDao{

	@PersistenceContext
	private EntityManager em;
	
	/**
	 * Find location list by postcode
	 */
	@Transactional
	@SuppressWarnings("unchecked")
	@Override
	public List<Tlocation> findLocationByPostcode(int postcode) {
		String str = "SELECT * FROM tlocation t WHERE t.Postcode = ?1";
		Query query = em.createNativeQuery(str, Tlocation.class);
		query.setParameter(1, postcode);
		List<Tlocation> list = query.getResultList();
		return list;
	}

	/**
	 * Find location list like suburb
	 */
	@Transactional
	@SuppressWarnings("unchecked")
	@Override
	public List<Tlocation> findLocationLikeSuburb(String suburb) {
		String str = "SELECT t FROM tlocation t WHERE UPPER(t.suburb) LIKE ?1";
		Query query = em.createQuery(str);
		query.setParameter(1, suburb.toUpperCase() + "%");
		return query.getResultList();
	}

	/**
	 * Find location list by suburb
	 */
	@Transactional
	@SuppressWarnings("unchecked")
	@Override
	public List<Tlocation> findLocationBySuburb(String suburb) {
		String str = "SELECT * FROM tlocation t WHERE t.Suburb = ?1";
		Query query = em.createNativeQuery(str, Tlocation.class);
		query.setParameter(1, suburb);
		return query.getResultList();
	}
	
	
}
