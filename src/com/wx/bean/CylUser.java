package com.wx.bean;

import javax.persistence.Entity;
import javax.persistence.Table;
@Entity
@Table(name="user")
public class CylUser {

	private int cylid;
	//产业链的id name 
	private String cylname;
	private String cylnumber;
	public int getCylid() {
		return cylid;
	}
	public void setCylid(int cylid) {
		this.cylid = cylid;
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
