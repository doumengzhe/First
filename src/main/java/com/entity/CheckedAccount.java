package com.entity;

import java.sql.Date;

public class CheckedAccount {

	private Integer checkedid;
	private Integer accountid;
	private Integer docid;
	private Integer checkedaccountid;
	private Integer sxszvalue;
	private Integer ljzlvalue;
	private Integer gzzfvalue;
	private Integer jcnlvalue;
	private Integer zzxtnlvalue;
	private Integer cxnlvalue;
	private Integer ldnlvalue;
	private Integer zrxvalue;
	private Integer fwysvalue;
	private Integer mbdcvalue;
	private Integer glxlvalue;
	private Integer xskfvalue;
	private Integer state;
	private Date checktime;

	public CheckedAccount() {
	}

	public void setCheckedid(Integer checkedid) {
		this.checkedid = checkedid;
	}

	public Integer getCheckedid() {
		return this.checkedid;
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

	public void setCheckedaccountid(Integer checkedaccountid) {
		this.checkedaccountid = checkedaccountid;
	}

	public Integer getCheckedaccountid() {
		return this.checkedaccountid;
	}

	public void setSxszvalue(Integer sxszvalue) {
		this.sxszvalue = sxszvalue;
	}

	public Integer getSxszvalue() {
		return this.sxszvalue;
	}

	public void setLjzlvalue(Integer ljzlvalue) {
		this.ljzlvalue = ljzlvalue;
	}

	public Integer getLjzlvalue() {
		return this.ljzlvalue;
	}

	public void setGzzfvalue(Integer gzzfvalue) {
		this.gzzfvalue = gzzfvalue;
	}

	public Integer getGzzfvalue() {
		return this.gzzfvalue;
	}

	public void setJcnlvalue(Integer jcnlvalue) {
		this.jcnlvalue = jcnlvalue;
	}

	public Integer getJcnlvalue() {
		return this.jcnlvalue;
	}

	public void setZzxtnlvalue(Integer zzxtnlvalue) {
		this.zzxtnlvalue = zzxtnlvalue;
	}

	public Integer getZzxtnlvalue() {
		return this.zzxtnlvalue;
	}

	public void setCxnlvalue(Integer cxnlvalue) {
		this.cxnlvalue = cxnlvalue;
	}

	public Integer getCxnlvalue() {
		return this.cxnlvalue;
	}

	public void setLdnlvalue(Integer ldnlvalue) {
		this.ldnlvalue = ldnlvalue;
	}

	public Integer getLdnlvalue() {
		return this.ldnlvalue;
	}

	public void setZrxvalue(Integer zrxvalue) {
		this.zrxvalue = zrxvalue;
	}

	public Integer getZrxvalue() {
		return this.zrxvalue;
	}

	public void setFwysvalue(Integer fwysvalue) {
		this.fwysvalue = fwysvalue;
	}

	public Integer getFwysvalue() {
		return this.fwysvalue;
	}

	public void setMbdcvalue(Integer mbdcvalue) {
		this.mbdcvalue = mbdcvalue;
	}

	public Integer getMbdcvalue() {
		return this.mbdcvalue;
	}

	public void setGlxlvalue(Integer glxlvalue) {
		this.glxlvalue = glxlvalue;
	}

	public Integer getGlxlvalue() {
		return this.glxlvalue;
	}

	public void setXskfvalue(Integer xskfvalue) {
		this.xskfvalue = xskfvalue;
	}

	public Integer getXskfvalue() {
		return this.xskfvalue;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Integer getState() {
		return this.state;
	}

	public void setChecktime(Date checktime) {
		this.checktime = checktime;
	}

	public Date getChecktime() {
		return this.checktime;
	}

	@Override
	public String toString() {
		return "CheckedAccount [checkedid=" + checkedid + ", accountid="
				+ accountid + ", docid=" + docid + ", checkedaccountid="
				+ checkedaccountid + ", sxszvalue=" + sxszvalue
				+ ", ljzlvalue=" + ljzlvalue + ", gzzfvalue=" + gzzfvalue
				+ ", jcnlvalue=" + jcnlvalue + ", zzxtnlvalue=" + zzxtnlvalue
				+ ", cxnlvalue=" + cxnlvalue + ", ldnlvalue=" + ldnlvalue
				+ ", zrxvalue=" + zrxvalue + ", fwysvalue=" + fwysvalue
				+ ", mbdcvalue=" + mbdcvalue + ", glxlvalue=" + glxlvalue
				+ ", xskfvalue=" + xskfvalue + ", state=" + state
				+ ", checktime=" + checktime + "]";
	}

}