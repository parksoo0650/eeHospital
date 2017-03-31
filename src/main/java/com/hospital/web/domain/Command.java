package com.hospital.web.domain;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import jdk.nashorn.internal.ir.annotations.Reference;
import lombok.Data;

@Component
interface Orderable{
	public Command process(Map<?,?> map);
}
@Component @Lazy @Data
public class Command implements Orderable{
	  	@Resource(name="myMap")
		Map<?, ?> map;

	    public Command(Map<?,?>map) {
	    	this.map=map;
	    }

	    public Integer[] getPageInfo(){
			Pagination page=new Pagination();
			String pageNo=(String)map.get("pageNo");
			String count=(String) map.get("count");
			page.setBlockSize(5);
			page.setRowCount(5);
			page.setCount(Integer.parseInt(count));
			page.setPageNo(pageNo);
			page.setPageStart();
			page.setPageEnd();
			page.setPageCount();
			page.setBlockCount();
			page.setBlockStart();
			page.setPrevBlock();
			page.setNextBlock();
			page.setBlockEnd();
		   	return page.getPageInfo();
	       }
	    public Person<? extends Info> getPersonInfo(){
	    	Person<?> person=null;
			switch(map.get("type").toString()){
			case "patient" : 
				person=new Person<Info>(new Patient());
				Patient patient = (Patient) person.getInfo();
				patient.setId(map.get("id").toString());
				patient.setPass(map.get("pass").toString());
				patient.setName(map.get("name").toString());
				patient.setEmail(map.get("email").toString());
				patient.setAddr(map.get("addr").toString());
				patient.setName(map.get("phone").toString());
				patient.setEmail(map.get("job").toString());
				patient.setAddr(map.get("gen").toString());
				patient.setName(map.get("nur_id").toString());
				patient.setEmail(map.get("doc_id").toString());
				patient.setAddr(map.get("jumin").toString());
				map.put("patient",patient);
				
				break; 
			case "doctor" : 
				person=new Person<Info>(new Doctor());
				Doctor doctor = (Doctor) person.getInfo();
				//이하 setter는 생략
				break; 
			case "nurse" : 
				person=new Person<Info>(new Nurse());
				Nurse nurse = (Nurse) person.getInfo();
				//이하 setter는 생략
				break; 
			case "admin" : 
				person=new Person<Info>(new Admin());
				Admin admin = (Admin) person.getInfo();
				//이하 setter는 생략
				break;
				default: break;
			}
			return person;
	    }
	   

	    @Override
	    public Command process(Map<?, ?> map) {
	    	return new Command(map);		
	    }
	class Pagination{
		private Integer rowCount,count,pageCount,blockSize,blockCount,pageNo,pageStart,pageEnd,
		blockStart,blockEnd,prevBlock,nextBlock;
		
	    public void setRowCount(int rowCount) {
	        this.rowCount = rowCount;
	    }


	    public void setPageNo(String pageNo) {
	        this.pageNo = Integer.parseInt(pageNo);
	    }


	    public void setPageStart() {
	        this.pageStart = (pageNo-1)*rowCount+1;
	    }


	    public void setPageEnd() {
	        this.pageEnd = pageNo*rowCount;
	    }


	    public void setCount(int count) {
	        this.count = count;
	    }


	    public void setPageCount() {
		this.pageCount=(count%rowCount==0)?count/rowCount:count/rowCount+1;
		System.out.println("pageCount : " + this.pageCount);
	    }


	    public void setBlockSize(int blockSize) {
	        this.blockSize = blockSize;
	    }


	    public void setBlockCount() {
	        this.blockCount = pageCount/blockSize;
	    }


	    public void setBlockStart() {
	        this.blockStart = pageNo-((pageNo-1)%blockSize);
	    }


	    public void setPrevBlock() {
	        this.prevBlock = blockStart-blockSize;
	    }


	    public void setNextBlock() {
	        this.nextBlock = blockStart+blockSize;
	    }


	    public void setBlockEnd() {
		this.blockEnd=blockCount;
		this.blockEnd=((blockStart+rowCount-1)<pageCount)?blockStart+blockSize-1:pageCount;
		
	    }


	    public Integer[] getPageInfo(){
		Integer[] arr={count,pageCount,pageNo,pageStart,pageEnd,
				blockStart,blockEnd,prevBlock,nextBlock};
		return arr;
	    }
		
	}
}
