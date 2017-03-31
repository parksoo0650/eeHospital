package com.hospital.web.service;

import java.util.Map;

import org.springframework.stereotype.Service;

@Service
@FunctionalInterface
public interface UpdateService {
	public int execute(Object o)throws Exception;// 익명 메소드라 메소드명이 의미가 없다.
}
