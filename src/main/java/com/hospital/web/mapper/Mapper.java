package com.hospital.web.mapper;

import java.util.HashMap;
import java.util.*;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.hospital.web.domain.Doctor;
import com.hospital.web.domain.Info;
import com.hospital.web.domain.Nurse;
import com.hospital.web.domain.Patient;
import com.hospital.web.domain.Person;
@Repository //똑같은 액션이 반복됨
public interface Mapper {
	public int registPatient(Map<?,?>map) throws Exception;
	public int registDoctor(Doctor doctor) throws Exception;
	public int registNurse(Nurse nurse) throws Exception;
    public Patient findPatient(Map<?,?> map) throws Exception;
    public Doctor findDoctor(Map<?,?> map) throws Exception;
    public Nurse findNurse(Map<?,?> map) throws Exception;
    public List<Patient> findPatients(Map<?,?> map) throws Exception;
    public List<Doctor> findDoctors(Map<?,?> map) throws Exception;
    public List<Nurse> findNurses(Map<?,?> map) throws Exception;
    public int updatePatient(Patient patient) throws Exception;
    public int updateDoctor(Doctor doctor) throws Exception;
    public int updateNurse(Nurse nurse) throws Exception;
    public int delete(Map<?,?>map) throws Exception;    
    public int count(Map<?,?>map) throws Exception;   
    public int exist(Map<?,?>map) throws Exception;
}
