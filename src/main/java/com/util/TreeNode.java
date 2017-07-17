package com.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TreeNode {

	/**
	 * 
	 * id:"node1", //node id 03 text:"node 1", //node text for display. 04
	 * value:"1", //node value 05 showcheck:false, //whether to show checkbox 06
	 * checkstate:0, //Checkbox checking state. 0 for unchecked, 1 for partial
	 * checked, 2 for checked. 07 hasChildren:true, //If hasChildren and
	 * complete set to true, and ChildNodes is empty, tree will request server
	 * to get sub node. 08 isexpand:false, //Expand or collapse. 09
	 * complete:false, //See hasChildren. 10 ChildNodes:[]
	 * 
	 */
	private String id;
	private String text;
	private String state = "open";
	private boolean checked = true;
	private Map<Object, Object> attributes = new HashMap<Object, Object>();
	private List<TreeNode> children = new ArrayList<TreeNode>();

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public boolean isChecked() {
		return checked;
	}

	public void setChecked(boolean checked) {
		this.checked = checked;
	}

	public Map<Object, Object> getAttributes() {
		return attributes;
	}

	public void setAttributes(Map<Object, Object> attributes) {
		this.attributes = attributes;
	}

	public List<TreeNode> getChildren() {
		return children;
	}

	public void setChildren(List<TreeNode> children) {
		this.children = children;
	}

}
