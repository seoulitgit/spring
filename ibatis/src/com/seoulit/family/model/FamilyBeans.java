package com.seoulit.family.model;

import com.seoulit.common.bean.BaseBean;

public class FamilyBeans extends BaseBean {
	private String relation;
	private String name;
	private String birth;
	private String academic;
	private String job;
	private String liveCheck;
	private String empId;
	private String code;
	public String getRelation() {
		return relation;
	}
	public void setRelation(String relation) {
		this.relation = relation;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getAcademic() {
		return academic;
	}
	public void setAcademic(String academic) {
		this.academic = academic;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getLiveCheck() {
		return liveCheck;
	}
	public void setLiveCheck(String liveCheck) {
		this.liveCheck = liveCheck;
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
