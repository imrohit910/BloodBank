package com.dao;
import javax.persistence.*;
import com.dto.DonerSignup;
import java.util.*;


public class DonersignupDao {
	 
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("dev");
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		public void save(DonerSignup donerSignup ) {
		et.begin();
		em.persist(donerSignup);
		et.commit();
		}
		public DonerSignup findDonorByEmail(String email ) {
			List<DonerSignup> li=em.createQuery("Select d from DonerSignup d where email=?1").setParameter(1, email).getResultList();			
			if(!li.isEmpty()){
				return li.get(0);
			}
			else {
				return null;
			}
		}	
		public DonerSignup findDonorByID(int id ) {
			return em.find(DonerSignup.class, id);
		}
		public void updateDonor(DonerSignup donor) {
			et.begin();
			em.merge(donor);
			et.commit();
		}
		public void deleteDonorSignup(DonerSignup donor) {
			et.begin();
			em.remove(donor);
			et.commit();
		}
			
	}



