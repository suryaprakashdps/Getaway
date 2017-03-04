package com.github.getaway.model;

import org.springframework.web.multipart.MultipartFile;

public class LocationVO {
	
	private String state;
	private String locname;
	
	private MultipartFile fileData;
	private byte[] fileDataBytes;
	private String base64imagefile;

	private String desc;
	private String locimg;
	private String updtuser;
	private int idplace;
	private String locimgname;
	
	
	private byte[] locimage;
	
	public String getLocname() {
		return locname;
	}

	public void setLocname(String locname) {
		this.locname = locname;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getLocimg() {
		return locimg;
	}

	public void setLocimg(String locimg) {
		this.locimg = locimg;
	}

	public String getUpdtuser() {
		return updtuser;
	}

	public void setUpdtuser(String updtuser) {
		this.updtuser = updtuser;
	}


	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public byte[] getLocimage() {
		return locimage;
	}

	public void setLocimage(byte[] locimage) {
		this.locimage = locimage;
	}

	public int getIdplace() {
		return idplace;
	}

	public void setIdplace(int idplace) {
		this.idplace = idplace;
	}

	public String getLocimgname() {
		return locimgname;
	}

	public void setLocimgname(String locimgname) {
		this.locimgname = locimgname;
	}

	
	public byte[] getFileDataBytes() {
		return fileDataBytes;
	}

	public void setFileDataBytes(byte[] fileDataBytes) {
		this.fileDataBytes = fileDataBytes;
	}

	public MultipartFile getFileData() {
		return fileData;
	}

	public void setFileData(MultipartFile fileData) {
		this.fileData = fileData;
	}

	public String getBase64imagefile() {
		return base64imagefile;
	}

	public void setBase64imagefile(String base64imagefile) {
		this.base64imagefile = base64imagefile;
	}



}
