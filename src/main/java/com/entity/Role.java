package com.entity;

import java.util.ArrayList;
import java.util.List;

public class Role {

	private Integer roleid;
	private String rolename;
	private String descript;
	private List<String> rights = new ArrayList<String>();

	public Role() {
	}

	public void setRoleid(Integer roleid) {
		this.roleid = roleid;
	}

	public Integer getRoleid() {
		return this.roleid;
	}

	public void setRolename(String rolename) {
		this.rolename = rolename;
	}

	public String getRolename() {
		return this.rolename;
	}

	public void setDescript(String descript) {
		this.descript = descript;
	}

	public String getDescript() {
		return this.descript;
	}

	public List<String> getRights() {
		return rights;
	}

	public void setRights(List<String> rights) {
		this.rights = rights;
	}

}