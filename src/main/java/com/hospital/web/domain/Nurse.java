package com.hospital.web.domain;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
@Component @Lazy @Data
public class Nurse extends Info {
    private String major,position;

	@Override
	public String getGroup() {
		// TODO Auto-generated method stub
		return "Nurse";
	}
}

