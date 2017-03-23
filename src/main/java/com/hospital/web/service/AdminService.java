package com.hospital.web.service;

import java.util.*;
import org.springframework.stereotype.Component;
import com.hospital.web.domain.AdminDTO;
@Component
public interface AdminService {
	 public void regist(AdminDTO member);
	    //read
	    public AdminDTO findById(String id);
	    public List<AdminDTO> findByName(String name);//똑같은 이름이 있을 때
	    public Map<String,AdminDTO> mapfindByName(String name);
	    public List<AdminDTO> adminlist(); //찾은 결과는 Map형식으로 담지 않음
	    public List<String> keylist(); 
	    public int count();
	    //update
	    public void update(AdminDTO member);
	    //delete
	    public void remove(String id); //비밀번호 노출,공개키
}
