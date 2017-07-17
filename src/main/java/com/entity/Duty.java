package com.entity;

public class Duty {

	private Integer dutyid;
	private String dutyname;
	private Integer dutylevel;

	public Duty() {
	}

	public void setDutyid(Integer dutyid) {
		this.dutyid = dutyid;
	}

	public Integer getDutyid() {
		return this.dutyid;
	}

	public void setDutyname(String dutyname) {
		this.dutyname = dutyname;
	}

	public String getDutyname() {
		return this.dutyname;
	}

	public void setDutylevel(Integer dutylevel) {
		this.dutylevel = dutylevel;
	}

	public Integer getDutylevel() {
		return this.dutylevel;
	}

}