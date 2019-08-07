package com.hnzy.hot.service;

import org.apache.ibatis.annotations.Param;

import com.hnzy.hot.pojo.User;



public interface UserService {
	public User findUserByNameAndMD5(String username, String password);
	
	public String findUserPass(Integer ID);
	
	public void update(User user);
	//根据用户名查找是否存在
		public User findByName(String userName);
		//插入用户名和密码
		public void InsUsePass(@Param("userName") String userName, @Param("passWord")String passWord);
}
