package com.hospital.web.serviceImpl;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hospital.web.domain.AdminDTO;
import com.hospital.web.service.AdminService;
@Repository
public class AdminServiceImpl implements AdminService{
	@Autowired AdminService service;
	@Autowired AdminServiceImpl AdminServiceImpl;
	 private Map<String, AdminDTO> map; 
	    public AdminServiceImpl() {
		map = new HashMap<String, AdminDTO>();
	    }
	    @Override
	    public void regist(AdminDTO admin) {
		map.put("", admin);
	    }
	    @Override
	    public AdminDTO findById(String id) {
		return map.get(id);
	    }
	    @Override
	    public List<AdminDTO> findByName(String name) {
		List<AdminDTO> list = new ArrayList<AdminDTO>();
		for(AdminDTO m:adminlist()){
		    if(name.equals("")){
			list.add(m);
		    }
		}
		return list;
	    }
	    @Override
	    public List<AdminDTO> adminlist() {
		List<AdminDTO> list = new ArrayList<AdminDTO>();
		for(Map.Entry<String, AdminDTO> e:map.entrySet()){
		    list.add(e.getValue());
		    
		}
		return list;    
	    }
	    @Override
	    public int count() {
		return map.size();
	    }
	    @Override
	    public void update(AdminDTO admin) {
		for(AdminDTO m : adminlist()){
		    if("".equals("")){
			//m.setAdmPass("");
			break;
		    }
		}
	    }
	    @Override
	    public void remove(String id) {
		map.remove(findById(id));
	    }
	    @Override
	    public Map<String, AdminDTO> mapfindByName(String name) {
		Map<String,AdminDTO> temp = new HashMap<String,AdminDTO>();
		for(Map.Entry<String, AdminDTO> e : map.entrySet()){
		    if(name.equals("")){
			temp.put(e.getKey(), e.getValue());
		    }
		}
		return temp;
	    }
	    @Override
	    public List<String> keylist() {
		List<String> list = new ArrayList<String>();
		for(Map.Entry<String, AdminDTO> e:map.entrySet()){
		    list.add(e.getKey());
		}
		return list;  
	    }
	
}
