package com.hospital.web.mapper;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.hospital.web.domain.Patient;
@Repository //똑같은 액션이 반복됨
public interface PatientMapper {
	public int insert(Patient member) throws Exception;
    public Patient selectById(String id) throws Exception;
    public int update(Patient member) throws Exception;
    public int delete(Patient member) throws Exception;    
    public int count() throws Exception;   
    public int exist(String id) throws Exception;
}
