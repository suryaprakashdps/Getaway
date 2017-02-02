package com.github.getaway.mappers;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import com.github.getaway.model.Login;

public interface LoginMapper {
	@Insert("INSERT INTO userprof (fname, lname, email,"
			+ "password) VALUES"
			+ "(#{fname},#{lname}, #{username}, #{password}"
			+ ")")
	
	public void insertuser(Login user);
		
	@Select("SELECT email as username, password as password, "
			+ "fname as fname, lname as lname "
			+ "FROM userprof WHERE email = #{username}")
	public Login getuserByUserName(String userName);


}
