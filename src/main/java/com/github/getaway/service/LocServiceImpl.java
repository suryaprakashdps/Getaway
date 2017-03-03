package com.github.getaway.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.getaway.mappers.QueryMapper;
import com.github.getaway.model.LocationVO;

@Service("LocService")
public class LocServiceImpl implements LocService {
	
	@Autowired
	private QueryMapper querymapper;

	public void saveloc(LocationVO locvo) {
		
		querymapper.saveloc(locvo);
		
	}

	public LocationVO viewlocation() {
		// TODO Auto-generated method stub
		LocationVO locvo = new LocationVO();
		int id = 11;
		locvo = querymapper.viewlocation(id);
		System.out.println("locvoimpl service"+locvo);
		return locvo;
	}

	public ArrayList<LocationVO> searchplaces(LocationVO locvo) {
		// TODO Auto-generated method stub
		return querymapper.searchplaces(locvo);
	}
	

}
