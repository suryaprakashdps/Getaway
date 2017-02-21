package com.github.getaway.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.getaway.mappers.LoginMapper;
import com.github.getaway.mappers.QueryMapper;
import com.github.getaway.model.Login;

@Service("userService")
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginMapper userMapper;
	
	@Autowired
	private QueryMapper querymapper;
	
	@Transactional
	public void insertuser(Login user) {
		userMapper.insertuser(user);
	}

	public boolean getuserByLogin(String userName, String password) {
		Login user = userMapper.getuserByUserName(userName);
		
		if(user != null && user.getPassword().equals(password)) {
			return true;
		}
		
		return false;
	}

	public boolean getuserByUserName(String userName) {
		Login user = userMapper.getuserByUserName(userName);
		
		if(user != null) {
			return true;
		}
		
		return false;
	}

	public Login getuserprofile(String username) {
		// TODO Auto-generated method stub
		
		System.out.println("username in service"+username);
		
		return querymapper.getuserprof(username);
		
		
	}

}
