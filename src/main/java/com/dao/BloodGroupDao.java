package com.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.dto.BloodGroup;

public class BloodGroupDao {
	EntityManagerFactory emf=Persistence.createEntityManagerFactory("dev");
	EntityManager em=emf.createEntityManager();
	EntityTransaction et=em.getTransaction();
	//find
	public BloodGroup findByBloodGroup(String bloodgroup) {
		List<BloodGroup> li=em.createQuery("select b from BloodGroup b where bgname=?1").setParameter(1,bloodgroup ).getResultList();
		if(!li.isEmpty()) {
			return li.get(0);
		}else {
			return null;
		}
	}
	public BloodGroup findBloodGroupByID(int id) {
		return em.find(BloodGroup.class, id);
	}
	public void updateBloodGroup(BloodGroup bloodGroup) {
		et.begin();
		em.merge(bloodGroup);
		et.commit();
	}
}
