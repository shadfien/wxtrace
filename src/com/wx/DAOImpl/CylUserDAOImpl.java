package com.wx.DAOImpl;

import org.fanfan.core.FanFanDAOSupportWithSpring;
import org.springframework.stereotype.Repository;

import com.wx.DAO.CylUserDAO;
import com.wx.bean.CylUser;

@Repository
public class CylUserDAOImpl extends FanFanDAOSupportWithSpring implements CylUserDAO{

	@Override
	public CylUser saveUser(CylUser cyluser) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(cyluser);
		return cyluser;
	}

	

}
