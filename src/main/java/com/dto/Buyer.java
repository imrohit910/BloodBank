package com.dto;
import javax.persistence.*;
@Entity
public class Buyer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	@Column(unique=true)
	private String email;
	private String password;
	private int age;
	private String gender;
	private long phone;
	private String bloooGroup;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@ManyToOne(cascade = {CascadeType.PERSIST,CascadeType.MERGE})
	private BloodGroup bgroup;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	
	public String getBloooGroup() {
		return bloooGroup;
	}
	public void setBloooGroup(String bloooGroup) {
		this.bloooGroup = bloooGroup;
	}
	public BloodGroup getBgroup() {
		return bgroup;
	}
	public void setBgroup(BloodGroup bgroup) {
		this.bgroup = bgroup;
	}
}
