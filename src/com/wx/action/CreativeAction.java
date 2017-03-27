package com.wx.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.wx.bean.CylUser;
import com.wx.DAO.CylUserDAO;
@Controller
public class CreativeAction extends ActionSupport implements SessionAware
{
	private Map<String, Object> session;
	private CreativeAction creative;
	private CylUser cyluser;
	private String cylname;
	private String cylnumber;
	private CylUserDAO cylUserDao;
	
	
	public String input(){
		CylUser cylUser =new CylUser();
		cylUser.setCylname(cylname);
		cylUser.setCylnumber(cylnumber);
		cylUserDao.saveUser(cylUser);
		return SUCCESS;                             
	}
	
	public Map<String, Object> getSession() {
		return session;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public CreativeAction getCreative() {
		return creative;
	}
	public void setCreative(CreativeAction creative) {
		this.creative = creative;
	}
	public CylUser getCyluser() {
		return cyluser;
	}



	public void setCyluser(CylUser cyluser) {
		this.cyluser = cyluser;
	}

	public String getCylname() {
		return cylname;
	}

	public void setCylname(String cylname) {
		this.cylname = cylname;
	}

	public String getCylnumber() {
		return cylnumber;
	}

	public void setCylnumber(String cylnumber) {
		this.cylnumber = cylnumber;
	}


}