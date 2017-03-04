package com.github.getaway.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.github.getaway.model.LocationVO;
import com.github.getaway.service.LocService;


@Controller

public class LocController {

	@Autowired
	private LocService locservice;
	FileOutputStream fos = null;

	@RequestMapping(value = "/searchspot.do", method = RequestMethod.POST)
	public String statesearch(@ModelAttribute("locvo") LocationVO locvo, Model model) throws UnsupportedEncodingException  {

		ArrayList<LocationVO> placelist = new ArrayList<LocationVO>();
		

		
		ArrayList<LocationVO> resultlist = new ArrayList<LocationVO>();
		
		

		placelist = locservice.searchplaces(locvo);
		
		for (LocationVO temp : placelist) {
			
			byte[] data = temp.getFileDataBytes();
			
			
			 byte[] encodeBase64 = Base64.encodeBase64(data);
	         String base64Encoded = new String(encodeBase64, "UTF-8");
	         temp.setBase64imagefile(base64Encoded);
	         
	         resultlist.add(temp);
		
			
			System.out.println("resultvo is"+temp.getLocname());
		}
		
		for (LocationVO output : resultlist){
			System.out.println("resultlist is"+output.getLocname());
			
		}
		
		model.addAttribute("placeslist", resultlist);

		return "places";
	}

	@RequestMapping(value = "/addloc.do", method = RequestMethod.POST)
	public String addloc(Model model) {
		LocationVO locvo = new LocationVO();
		model.addAttribute("locvo", locvo);
		return "addloc";
	}

	@RequestMapping(value = "/displayloc.do", method = RequestMethod.POST)
	public String displayloc(Model model,final HttpServletResponse response) throws IOException, ServletException {
		
		
		LocationVO displayvo = new LocationVO();
		
		int id=27;

		displayvo = locservice.viewlocation(id);

		byte[] data = displayvo.getFileDataBytes();
		
	
		 byte[] encodeBase64 = Base64.encodeBase64(data);
         String base64Encoded = new String(encodeBase64, "UTF-8");
         displayvo.setBase64imagefile(base64Encoded);
     	model.addAttribute("displayvo", displayvo);
		return "viewloc";
			
	}

	@RequestMapping(value = "/saveloc.do", method = RequestMethod.POST)
	public String saveloc(@ModelAttribute("locvo") LocationVO locvo, Model model,
			@RequestParam("file") MultipartFile file, final HttpServletResponse response) throws IOException {

		locvo.setFileData(file);
		locservice.saveloc(locvo);
		

		LocationVO displayvo = new LocationVO();
		
		displayvo =locservice.viewsavedloc(locvo);

		//displayvo = locservice.viewlocation();

		byte[] data = displayvo.getFileDataBytes();
		
	
		 byte[] encodeBase64 = Base64.encodeBase64(data);
         String base64Encoded = new String(encodeBase64, "UTF-8");
         displayvo.setBase64imagefile(base64Encoded);
     	model.addAttribute("displayvo", displayvo);
		return "viewloc";
		
	

		// byte[] filebytes=file.getBytes();

		// Filedownload

//		LocationVO displayvo = new LocationVO();
//
//		displayvo = locservice.viewlocation();
//
//		byte[] data = displayvo.getFileDataBytes();
		
	
//		response.setContentType("image / jpeg");
//		response.setCharacterEncoding("UTF-8");
//		OutputStream outputSream = response.getOutputStream();
//		InputStream in = new ByteArrayInputStream(data);
//		int len = 0;
//		byte[] buf = new byte[1024];
//		while ((len = in.read(buf, 0, 1024)) != -1) {
//			outputSream.write(buf, 0, len);
//		}
//		outputSream.close();
	
	}

	@RequestMapping(value = "/{id}/viewplace.do", method = RequestMethod.GET)
	public String displayplace(@PathVariable("id") int id, Model model) throws UnsupportedEncodingException {
		

		LocationVO displayvo = new LocationVO();

		displayvo = locservice.viewlocation(id);

		byte[] data = displayvo.getFileDataBytes();
		
	
		 byte[] encodeBase64 = Base64.encodeBase64(data);
         String base64Encoded = new String(encodeBase64, "UTF-8");
         displayvo.setBase64imagefile(base64Encoded);
         
         
     	model.addAttribute("displayvo", displayvo);
		
		
		return "locdisplay";

	}
}

// System.out.println("image out put before");
//
// System.out.println("image out put after");
//
//
//// Creating the directory to store file
// String rootPath = System.getProperty("catalina.home");
// File dir = new File(rootPath + File.separator + "tmpFiles");
// if (!dir.exists())
// dir.mkdirs();
//
//// Create the file on server
// File serverFile = new File(dir.getAbsolutePath()
// + File.separator + locvo.getLocimgname());
// BufferedOutputStream stream = new BufferedOutputStream(
// new FileOutputStream(serverFile));
// stream.write(bytes);
// stream.close();
// locservice.saveloc(locvo);
//
//// output
// File fileop = new
// File("/Users/suriyaprakashselvaraj/Documents/project/server/apache-tomcat-7.0.73/tmpFiles/paris.jpg");
//
// FileInputStream fis = new FileInputStream(fileop);
//// create FileInputStream which obtains input bytes from a file in a file
// system
//// FileInputStream is meant for reading streams of raw bytes such as image
// data. For reading streams of characters, consider using FileReader.
//
// ByteArrayOutputStream bos = new ByteArrayOutputStream();
// byte[] buf = new byte[1024];
// try {
// for (int readNum; (readNum = fis.read(buf)) != -1;) {
// //Writes to this byte array output stream
// bos.write(buf, 0, readNum);
// System.out.println("read " + readNum + " bytes,");
// }
// } catch (IOException ex) {
// // Logger.getLogger(ConvertImage.class.getName()).log(Level.SEVERE, null,
// ex);
// }
//
// byte[] bytesop = bos.toByteArray();
//
// @SuppressWarnings("restriction")
// String encodeBase64 = Base64.encode(bytesop);
//
//
//
// System.out.println(encodeBase64);
//
//
//
//
// //locvo.setLocimage(imagefile);
//
// //locservice.saveloc(locvo);
//
// LocationVO viewlocvo = new LocationVO();
//
// String
// path="/Users/suriyaprakashselvaraj/Documents/project/server/apache-tomcat-7.0.73/tmpFiles/paris.jpg";
// //output

//
//
//
// System.out.println("viewloc
// controller"+viewlocvo.getLocimage()+viewlocvo.getLocimgname());
//
// return "viewloc";
