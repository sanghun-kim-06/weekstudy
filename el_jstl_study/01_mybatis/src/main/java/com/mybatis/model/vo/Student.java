package com.mybatis.model.vo;

import java.util.Date;

public class Student {
	private int no;
	private String name;
	private long tel;
	private String email;
	private String address;
	private Date enrollDate;
	
	public Student() {}
	
	public Student(String name, long tel, String email, String address){
		this.name = name;
		this.tel = tel;
		this.email = email;
		this.address = address;
	}
	public Student(String name, long tel, String email, String address, Date enrollDate){
		this.name = name;
		this.tel = tel;
		this.email = email;
		this.address = address;
		this.enrollDate = enrollDate;
	}

	public Student(int no, String name, long tel, String email, String address, Date enroll_Date) {
		super();
		this.no = no;
		this.name = name;
		this.tel = tel;
		this.email = email;
		this.address = address;
		this.enrollDate = enroll_Date;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getTel() {
		return tel;
	}

	public void setTel(long tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	@Override
	public String toString() {
		return "Student [name=" + name + ", tel=" + tel + ", email=" + email + ", address=" + address + ", enrollDate="
				+ enrollDate + "]";
	}
}
