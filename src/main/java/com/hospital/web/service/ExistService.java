package com.hospital.web.service;

import org.springframework.stereotype.Component;

@Component
public interface ExistService { //람다식
	public int exist(Object o)throws Exception;
}
