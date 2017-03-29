package com.hospital.web.domain;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import lombok.Data;
@Component @Lazy @Data 
public class Doctor extends Info{
    private String major,Position;

    @Override
	public String getGroup() {
		// TODO Auto-generated method stub
		return "Doctor";
	}
}
