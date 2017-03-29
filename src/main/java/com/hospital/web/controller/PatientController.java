package com.hospital.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hospital.web.domain.Info;
import com.hospital.web.domain.Patient;
import com.hospital.web.domain.Person;
import com.hospital.web.mapper.Mapper;
import com.hospital.web.service.CRUD;
import com.hospital.web.service.CRUD.Service;
/**
 * =================================
 * @fileName :Patient Controlller
 * @date : 2017-03-28
 * @author : Park Seoungsoo
 * @story
 * @method
 * Join()
 * login()
 * =================================
 */
@Controller
@RequestMapping(value="/patient")
public class PatientController {
	private static final Logger logger = LoggerFactory.getLogger(PatientController.class);
	@Autowired Mapper mapper;
 	@RequestMapping("/join") //컨텍스트 한번 흩고 context 가서 wire한다.
	public String join(){
		logger.info("PatientController - goJoin() {} !!", "ENTER");
		return "public:patient/registerForm";
	}
	
	@RequestMapping("/doctor/{docID}") //컨텍스트 한번 흩고 context 가서 wire한다.
	public String getDoctorInfo(@PathVariable String docID){
		logger.info("PatientController - getDoctorInfo() {} !!", "ENTER");
		logger.info("PatientController - docID={} !!", docID);
		return "patient:patient/doctorInfo";
	}
}
