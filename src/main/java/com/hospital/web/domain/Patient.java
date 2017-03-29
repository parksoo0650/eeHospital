package com.hospital.web.domain;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;
import lombok.Data;
@Component @Lazy @Data
public class Patient extends Info{//Type정의는 Component로 한다.
    private String job,jumin,addr,docID,nurID;
	private Doctor doctor;
	private Nurse nurse;
	
	@Override
	public String getGroup() {
		return "Patient";
	}
}
