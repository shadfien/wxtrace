package com.wx.DAOImpl;

import java.util.List;
import org.fanfan.core.FanFanDAOSupportWithSpring;
import org.springframework.stereotype.Repository;
import com.wx.DAO.UserDAO;
import com.wx.bean.User;
@Repository
public class UserDAOImpl extends FanFanDAOSupportWithSpring implements UserDAO{

	@Override
	public User queryUser(User user) {
		String hqlString="from User u where u.name=? and u.password=?";
		List<User> users=this.getHibernateTemplate().find(hqlString,user.getName(),user.getPassword());
		if(users.size()==1)
			return users.get(0);
		return null;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<User> findUserByType(String userType) {
		// TODO Auto-generated method stub
		String queryString="from User user where user.userType=?";
		return this.getHibernateTemplate().find(queryString,userType);
	}
}
                                                                   