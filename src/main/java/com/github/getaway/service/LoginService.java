package com.github.getaway.service;

import com.github.getaway.model.Login;

public interface LoginService {
	void insertuser(Login user);
	boolean getuserByLogin(String userName, String password);
	boolean getuserByUserName(String userName);
	Login getuserprofile(String username);
}
