package com.niit.dao;


import com.niit.model.User;

public interface userDao {
	public void saveUser(User u);
	  public User getUserId(int uid);
	  public int update(User uid);

}
