package com.entity;

import java.sql.Date;

public class CheckDoc {

	private Integer docid;
	private Integer accountid;
	private String docname;
	private Date createtime;
	private String descript;
	private Date checktime;
	private Date stoptime;

	public CheckDoc() {
	}

	public void setDocid(Integer docid) {
		this.docid = docid;
	}

	public Integer getDocid() {
		return this.docid;
	}

	public void setAccountid(Integer accountid) {
		this.accountid = accountid;
	}

	public Integer getAccountid() {
		return this.accountid;
	}

	public void setDocname(String docname) {
		this.docname = docname;
	}

	public String getDocname() {
		return this.docname;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Date getCreatetime() {
		return this.createtime;
	}

	public void setDescript(String descript) {
		this.descript = descript;
	}

	public String getDescript() {
		return this.descript;
	}

	public void setChecktime(Date checktime) {
		this.checktime = checktime;
	}

	public Date getChecktime() {
		return this.checktime;
	}

	public void setStoptime(Date stoptime) {
		this.stoptime = stoptime;
	}

	public Date getStoptime() {
		return this.stoptime;
	}

}