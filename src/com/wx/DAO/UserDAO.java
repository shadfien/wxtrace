package com.wx.DAO;

import java.util.List;

import com.wx.bean.User;

public interface UserDAO {

	public User queryUser(User user);

	List<User> findUserByType(String userType);

}
