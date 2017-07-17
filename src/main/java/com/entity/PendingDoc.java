package com.entity;

import java.sql.Date;

public class PendingDoc {

	private Integer pendingdocid;
	private Integer accountid;
	private Integer docid;
	private Integer state;
	private Date finishtime;

	public PendingDoc() {
	}

	public void setPendingdocid(Integer pendingdocid) {
		this.pendingdocid = pendingdocid;
	}

	public Integer getPendingdocid() {
		return this.pendingdocid;
	}

	public void setAccountid(Integer accountid) {
		this.accountid = accountid;
	}

	public Integer getAccountid() {
		return this.accountid;
	}

	public void setDocid(Integer docid) {
		this.docid = docid;
	}

	public Integer getDocid() {
		return this.docid;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Integer getState() {
		return this.state;
	}

	public void setFinishtime(Date finishtime) {
		this.finishtime = finishtime;
	}

	public Date getFinishtime() {
		return this.finishtime;
	}

}