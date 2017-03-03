package com.github.getaway.service;

import java.util.ArrayList;

import com.github.getaway.model.LocationVO;

public interface LocService {

	void saveloc(LocationVO locvo);

	LocationVO viewlocation();

	ArrayList<LocationVO> searchplaces(LocationVO locvo);

	
	
	

}
