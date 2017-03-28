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

import com.hospital.web.domain.Patient;
import com.hospital.web.mapper.PatientMapper;
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
	@Autowired Patient patient;
	@Autowired PatientMapper mapper;
 	@RequestMapping("/join") //컨텍스트 한번 흩고 context 가서 wire한다.
	public String join(){
		logger.info("PatientController - goJoin() {} !!", "ENTER");
		return "public:patient/registerForm";
	}
	@RequestMapping("/login") //컨텍스트 한번 흩고 context 가서 wire한다.
	public String login(){
		logger.info("PatientController - goLogin() {} !!", "ENTER");
		return "public:common/loginForm";
	}
	@RequestMapping(value="/login", method=RequestMethod.POST) //컨텍스트 한번 흩고 context 가서 wire한다.
	public String login(@RequestParam("id") String id ,
			@RequestParam("password") String password
			,Model model) throws Exception{ //이미 존재하는 것이기 때문에 
		logger.info("PatientController - goLogin() {} !!", "POST");
		logger.info("PatientController - id, pw: {}", id+","+password);
		patient.setPatID(id);
		patient.setPatPass(password);
		CRUD.Service ex = new CRUD.Service() {
			@Override
			public Object execute(Object o) throws Exception {
				logger.info("ID ? : {}", o);
				return mapper.exist(id);
			}
		};
		Integer count=(Integer) ex.execute(id);
		logger.info("DB ID exist ? : {}", count);
		String movePosition="";
		if(count==0){
			logger.info("DB 다녀온 결과 : {}", "ID not exist");
			movePosition="public:common/loginForm";
		}else{
			CRUD.Service service=new CRUD.Service() {
				
				@Override
				public Object execute(Object o) throws Exception {
					// TODO Auto-generated method stub
					return mapper.selectById(id);
				}
			};
			patient=(Patient) service.execute(patient);
			if(patient.getPatPass().equals(password)){
				logger.info("DB 다녀온 결과 : {}", "success");
				movePosition="patient:patient/containerDetail";
			}else{
				logger.info("DB 다녀온 결과 : {}", "password not match");
				model.addAttribute("name", patient);
				movePosition="public:common/loginForm";
			}
		}
		return movePosition;
	
	}
	@RequestMapping("/doctor/{docID}") //컨텍스트 한번 흩고 context 가서 wire한다.
	public String getDoctorInfo(@PathVariable String docID){
		logger.info("PatientController - getDoctorInfo() {} !!", "ENTER");
		logger.info("PatientController - docID={} !!", docID);
		return "patient:patient/doctorInfo";
	}
}
