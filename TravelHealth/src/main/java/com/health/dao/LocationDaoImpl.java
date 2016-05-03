package com.health.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Component;

import com.health.entity.Tlocation;

@Component
public class LocationDaoImpl implements LocationDao{

	@PersistenceContext
	private EntityManager em;
	
	/**
	 * Find location list by postcode
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Tlocation> findLocationByPostcode(int postcode) {
		String str = "SELECT t FROM tlocation t WHERE t.postcode = ?1";
		Query query = em.createQuery(str);
		query.setParameter(1, postcode);
		return query.getResultList();
	}

	/**
	 * Find location list by suburb
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Tlocation> findLocationLikeSuburb(String suburb) {
		String str = "SELECT t FROM tlocation t WHERE UPPER(t.suburb) LIKE ?1";
		Query query = em.createQuery(str);
		query.setParameter(1, suburb.toUpperCase() + "%");
		return query.getResultList();
	}
	
	
}
