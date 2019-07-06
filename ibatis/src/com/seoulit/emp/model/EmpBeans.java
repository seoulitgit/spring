package com.seoulit.emp.model;

import java.util.List;

import com.seoulit.common.bean.BaseBean;

public class EmpBeans extends BaseBean {
	private String name;
	private String empId;
	private String dept;
	private String jikup;
	private String sex;
	private String phone;
	private String email;
	private String address;
	private String hiredate;
	private String zipcode;
	private String image;
	private List education;
	private List career;
	private List license;
	private List family;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getJikup() {
		return jikup;
	}
	public void setJikup(String jikup) {
		this.jikup = jikup;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
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
	public String getHiredate() {
		return hiredate;
	}
	public void setHiredate(String hiredate) {
		this.hiredate = hiredate;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public List getEducation() {
		return education;
	}
	public void setEducation(List education) {
		this.education = education;
	}
	public List getCareer() {
		return career;
	}
	public void setCareer(List career) {
		this.career = career;
	}
	public List getLicense() {
		return license;
	}
	public void setLicense(List license) {
		this.license = license;
	}
	public List getFamily() {
		return family;
	}
	public void setFamily(List family) {
		this.family = family;
	}
}
