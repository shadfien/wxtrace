package com.wx.utils;


import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.wx.bean.User;

public class ActionUtils extends ActionSupport implements SessionAware {
	protected Map<String, Object> session;
	protected User logineduser;
	protected boolean logined;

	public User getLogineduser() {
		return this.logineduser;
	}

	public Map<String, Object> getSession() {
		return this.session;
	}

	public boolean isLogined() {
		return this.logined;
	}

	public void setLogined(boolean logined) {
		this.logined = logined;
	}

	public void setLogineduser(User logineduser) {
		this.logineduser = logineduser;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public void validate() {
		this.logineduser = ((User) this.session.get("logineduser"));
		if (this.logineduser != null) {
			setLogined(true);
		} else
			setLogined(false);
	}
}