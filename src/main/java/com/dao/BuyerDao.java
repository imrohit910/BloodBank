package com.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.dto.Buyer;

public class BuyerDao {
	EntityManagerFactory emf=Persistence.createEntityManagerFactory("dev");
	EntityManager em=emf.createEntityManager();
	EntityTransaction et=em.getTransaction();
	
	public void Save(Buyer b) {
		et.begin();
		em.persist(b);
		et.commit();
	}
	public Buyer findByEmail(String email) {
		Query q=em.createQuery("select b from Buyer b where email=?1");
		q.setParameter(1, email);
		List<Buyer> li= q.getResultList();
		if(!li.isEmpty()) {
			return li.get(0);
		}
		else {
			return null;
		}
	}
	
}
