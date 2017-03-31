package com.hospital.web.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.RequestToViewNameTranslator;

import com.hospital.web.domain.Admin;
import com.hospital.web.domain.Command;
import com.hospital.web.domain.Doctor;
import com.hospital.web.domain.Info;
import com.hospital.web.domain.Nurse;
import com.hospital.web.domain.Patient;
import com.hospital.web.domain.Person;
import com.hospital.web.mapper.Mapper;
import com.hospital.web.service.CRUD;

@Controller
public class PersonController {
	private static final Logger logger = LoggerFactory.getLogger(PersonController.class);
	@Autowired Mapper mapper;
	@RequestMapping(value="/register/{type}",method=RequestMethod.POST)
	public String join(@PathVariable String type,
			@RequestBody Map<String,Object>map,
			Command command) throws Exception{ //@ModelAttribute Patient patient -- 완전히 일치 할 때 쓴다.
		logger.info("PersonController - join() {} !!", "ENTER");
		if(type.equals("")){
			type="patient";
		}
		map.put("type", type);
		Person<?>person=command.process(map).getPersonInfo();
		int result=0;
		switch(type){
		case "patient" : 
			logger.info("PersonController - registerForm에서 넘어온 값 : {} !!", map.get("id").toString());
				result=mapper.registPatient(person); //이렇게 해도 무방하다. 
			break; 
		case "doctor" : 
		
			break; 
		case "nurse" : 
		
			break; 
		case "admin" : 
		
			break;
			default: break;
		}
		
		return (result==1)?"public:common/loginForm":"redirect:{"+type+"}/registerForm";
		
	}
	@RequestMapping("/detail/{docID}")
	public String detail(@PathVariable String docID){
		logger.info("DoctorController - goLogin() {} !!", "ENTER");
		if(docID.equals("")){return"redirect:/{permission}/login";}
		return "doctor:doctor/containerDetail";
	}
}
