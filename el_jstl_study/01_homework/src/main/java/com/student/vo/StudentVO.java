package com.student.vo;

public class StudentVO {
	private int studentNo;
	private String studentName;
	private int age;
	private int grade;
	private int classnumber;
	private int hieght;
	private String address;
	private String phone;
	private String gender;
	
	public StudentVO(int studentNo, String studentName, int age, int grade, int classnumber, int hieght, String address,
			String phone, String gender) {
		super();
		this.studentNo = studentNo;
		this.studentName = studentName;
		this.age = age;
		this.grade = grade;
		this.classnumber = classnumber;
		this.hieght = hieght;
		this.address = address;
		this.phone = phone;
		this.gender = gender;
	}

	public int getStudentNo() {
		return studentNo;
	}

	public void setStudentNo(int studentNo) {
		this.studentNo = studentNo;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public int getClassnumber() {
		return classnumber;
	}

	public void setClassnumber(int classnumber) {
		this.classnumber = classnumber;
	}

	public int getHieght() {
		return hieght;
	}

	public void setHieght(int hieght) {
		this.hieght = hieght;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
}
