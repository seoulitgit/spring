package com.seoulit.license.model;

import com.seoulit.common.bean.BaseBean;

public class LicenseBeans extends BaseBean {
	private String license;
	private String num;
	private String acquisition;
	private String grade;
	private String empId;
	private String code;
	public String getLicense() {
		return license;
	}
	public void setLicense(String license) {
		this.license = license;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getAcquisition() {
		return acquisition;
	}
	public void setAcquisition(String acquisition) {
		this.acquisition = acquisition;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
}
