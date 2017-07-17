package com.util;

/**
 * 这是一个关于树的对象，DwTree组件用到的格式，需要转换成JSON,返回给树。。
 */
import java.util.List;

public class TreeRoot<T> {
	private List<TreeNode> data;
	private boolean checkbox = true;
	private boolean cascadeCheck = true;

	public TreeRoot(List<TreeNode> data) {
		super();
		this.data = data;
	}

	public List<TreeNode> getData() {
		return data;
	}

	public void setData(List<TreeNode> data) {
		this.data = data;
	}

	public boolean isCheckbox() {
		return checkbox;
	}

	public void setCheckbox(boolean checkbox) {
		this.checkbox = checkbox;
	}

	public boolean isCascadeCheck() {
		return cascadeCheck;
	}

	public void setCascadeCheck(boolean cascadeCheck) {
		this.cascadeCheck = cascadeCheck;
	}

}
