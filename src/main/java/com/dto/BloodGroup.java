package com.dto;

import java.util.List;

import javax.persistence.*;

@Entity
public class BloodGroup {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String bgname;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBgname() {
		return bgname;
	}
	public void setBgname(String bgname) {
		this.bgname = bgname;
	}
	public List<DonerSignup> getDonerSignups() {
		return donerSignups;
	}
	public void setDonerSignups(List<DonerSignup> donerSignups) {
		this.donerSignups = donerSignups;
	}
	@OneToMany(cascade = {CascadeType.PERSIST,CascadeType.MERGE} )
private List<DonerSignup>donerSignups;
	
	@OneToMany(cascade = {CascadeType.PERSIST,CascadeType.MERGE} )
	private List<Buyer> Buyerlist;
	public List<Buyer> getBuyerlist() {
		return Buyerlist;
	}
	public void setBuyerlist(List<Buyer> buyerlist) {
		Buyerlist = buyerlist;
	}
}
