package com.github.getaway.mappers;

import java.util.ArrayList;

import com.github.getaway.model.LocationVO;
import com.github.getaway.model.Login;

public interface QueryMapper {
	
	public Login getuserprof(String id);

	public void saveloc(LocationVO locvo);

	public LocationVO viewlocation(int id);

	public ArrayList<LocationVO> searchplaces(LocationVO locvo);

}
