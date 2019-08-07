package com.hnzy.hot.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hnzy.hot.dao.UserDao;
import com.hnzy.hot.pojo.User;
import com.hnzy.hot.service.UserService;


@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;

	@Override
	public User findUserByNameAndMD5(String username, String password) {
		return userDao.findUserByNameAndMD5(username, password);
	}

	@Override
	public String findUserPass(Integer ID) {
		// TODO Auto-generated method stub
		return userDao.findUserPass(ID);
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		 userDao.update(user);
	}

	@Override
	public User findByName(String userName) {
		// TODO Auto-generated method stub
		return userDao.findByName(userName);
	}

	@Override
	public void InsUsePass(String userName, String passWord) {
		// TODO Auto-generated method stub
		userDao.InsUsePass(userName, passWord);
	}




}
