package com.wx.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.wx.DAO.UserDAO;
import com.wx.bean.User;

public class LoginAction extends ActionSupport implements SessionAware {
	private Map<String, Object> session;

	private User user;
	private UserDAO userDAO;

	public String login() {
		System.out.println(user.getName()+" "+user.getPassword());
		user = userDAO.queryUser(user);
		if (user != null) {
			session.put("logineduser", user);
		}
		return user.getUserType();
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	
	public UserDAO getUserDAO() {
		return userDAO;
	}
	@Autowired
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
