package com.hospital.web.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.hospital.web.domain.Doctor;
import com.hospital.web.domain.Info;
import com.hospital.web.domain.Nurse;
import com.hospital.web.domain.Patient;
import com.hospital.web.domain.Person;
import com.hospital.web.domain.Schema;
import com.hospital.web.mapper.Mapper;
import com.hospital.web.service.CRUD;

@Controller
@SessionAttributes("permission")
public class PermissionController {
	private static final Logger logger = LoggerFactory.getLogger(PermissionController.class);
	@Autowired Mapper mapper;
	@RequestMapping("/login") //컨텍스트 한번 흩고 context 가서 wire한다.
	public String login(){
		logger.info("PermissionController - login() {} !!", "ENTER");
		return "public:common/loginForm";
	}
	@RequestMapping(value="/{permission}/regist", method=RequestMethod.POST)
	public String regist(@PathVariable String permission,
			@RequestParam("id") String id,
			@RequestParam("password") String password,
			@RequestParam("name") String name,
			@RequestParam("email") String email,
			@RequestParam("addr") String addr) throws Exception{
		logger.info("PermissionController - regist() {} !!", "POST");
		String movePosition="";
		switch (permission) {
		case "patient":
			Person<?> person = new Person<Info>(new Patient());
			Patient patient = (Patient) person.getInfo();
			
			patient.setId(id);
			patient.setPass(password);
			patient.setName(name);
			patient.setEmail(email);
			patient.setAddr(addr);
			Map<String,Object>map=new HashMap<>();
			map.put("group", patient.getGroup());
			map.put("id", patient.getId());
			map.put("pass", patient.getPass());
			map.put("name", patient.getName());
			map.put("email", patient.getEmail());
			map.put("addr", patient.getAddr());
			map.put("phone", "");
			map.put("job", "");
			map.put("gen", "");
			map.put("nur_id", "");
			map.put("doc_id", "");
			map.put("jumin", "");
			CRUD.Service service = new CRUD.Service() {	
				@Override
				public Object execute(Object o) throws Exception {
					
					return mapper.registPatient(map);
				}
			};
				service.execute(patient);
				logger.info("DB 저장한 결과 : {}", "ID exist");
				movePosition="patient:common/container";
			break;

		default:
			break;
		}
		return movePosition;
	}
	@RequestMapping(value="/{permission}/login", method=RequestMethod.POST) //컨텍스트 한번 흩고 context 가서 wire한다.
	public String login(@RequestParam("id") String id ,
			@RequestParam("password") String password ,
			@PathVariable String permission, HttpSession session,
			Model model) throws Exception{ //이미 존재하는 것이기 때문에 
		logger.info("PermissionController - login() {} !!", "POST");
		logger.info("PermissionController - id, pw: {}", id+","+password);
		String movePosition="";
		switch (permission) { //group명 까지 같이 보내면 테이블에서 동적으로 query를 작성할 수 있다.
		case "patient":
			Person<?> person=new Person<Info>(new Patient());
			Patient patient=(Patient) person.getInfo();
			patient.setId(id);
			patient.setPass(password);
			Map<String,Object>map=new HashMap<>();
			map.put("group", patient.getGroup());
			map.put("key", Schema.PATIENT.getGroup());
			map.put("value", id);
			CRUD.Service ex = new CRUD.Service() {
				@Override
				public Object execute(Object o) throws Exception {
					logger.info("ID ? : {}", o);
					return mapper.exist(map);
				}
			};
			Integer count=(Integer) ex.execute(id);
			logger.info("DB ID exist ? : {}", count);
			
			if(count==0){
				logger.info("DB 다녀온 결과 : {}", "ID not exist");
				movePosition="public:common/loginForm";
			}else{
				CRUD.Service service=new CRUD.Service() {
	
					@Override
					public Object execute(Object o) throws Exception {
						return mapper.findPatient(map);
					}
				};
				patient=(Patient) service.execute(patient);
				if(patient.getPass().equals(password)){
					logger.info("DB 다녀온 결과 : {}", "success");
					session.setAttribute("permission", patient);
					movePosition="patient:patient/containerDetail";
				}else{
					logger.info("DB 다녀온 결과 : {}", "password not match");
					model.addAttribute("name", patient);
					movePosition="public:common/loginForm";
				}
			}
			break;
		case "doctor": 
			Person<?> dperson=new Person<Info>(new Doctor());
			Doctor doctor=(Doctor) dperson.getInfo();
			doctor.setId(id);
			doctor.setPass(password);
			Map<String,Object>dmap=new HashMap<>();
			dmap.put("group", doctor.getGroup());
			dmap.put("key", Schema.DOCTOR.getGroup());
			dmap.put("value", id);
			CRUD.Service docEx = new CRUD.Service() {
				@Override
				public Object execute(Object o) throws Exception {
					logger.info("ID ? : {}", o);
					return mapper.exist(dmap);
				}
			};
			Integer doc_count=(Integer) docEx.execute(id);
			logger.info("DB ID exist ? : {}", doc_count);
			
			if(doc_count==0){
				logger.info("DB 다녀온 결과 : {}", "ID not exist");
				movePosition="public:common/loginForm";
			}else{
				CRUD.Service service=new CRUD.Service() {
	
					@Override
					public Object execute(Object o) throws Exception {
						return mapper.findDoctor(dmap);
					}
				};
				doctor=(Doctor) service.execute(doctor);
				if(doctor.getPass().equals(password)){
					logger.info("DB 다녀온 결과 : {}", "success");
					session.setAttribute("permission", doctor);
					movePosition="doctor:doctor/containerDetail";
				}else{
					logger.info("DB 다녀온 결과 : {}", "password not match");
					model.addAttribute("name", doctor);
					movePosition="public:common/loginForm";
				}
			}
		
			break;
		case "nurse" : 
			Person<?> nperson=new Person<Info>(new Patient());
			Nurse nurse=(Nurse) nperson.getInfo();
			nurse.setId(id);
			nurse.setPass(password);
			Map<String,Object>nmap=new HashMap<>();
			nmap.put("group", nurse.getGroup());
			nmap.put("key", Schema.NURSE.getGroup());
			nmap.put("value", id);
			CRUD.Service nex = new CRUD.Service() {
				@Override
				public Object execute(Object o) throws Exception {
					logger.info("ID ? : {}", o);
					return mapper.exist(nmap);
				}
			};
			Integer ncount=(Integer) nex.execute(id);
			logger.info("DB ID exist ? : {}", ncount);
			
			if(ncount==0){
				logger.info("DB 다녀온 결과 : {}", "ID not exist");
				movePosition="public:common/loginForm";
			}else{
				CRUD.Service service=new CRUD.Service() {
	
					@Override
					public Object execute(Object o) throws Exception {
						return mapper.findNurse(nmap);
					}
				};
				nurse=(Nurse) service.execute(nurse);
				if(nurse.getPass().equals(password)){
					logger.info("DB 다녀온 결과 : {}", "success");
					session.setAttribute("permission", nurse);
					movePosition="patient:patient/containerDetail";
				}else{
					logger.info("DB 다녀온 결과 : {}", "password not match");
					model.addAttribute("name", nurse);
					movePosition="public:common/loginForm";
				}
			}
			break;
		default:
			break;
		}
		return movePosition;
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}
}