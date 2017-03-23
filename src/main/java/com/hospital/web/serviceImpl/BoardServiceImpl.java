package com.hospital.web.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hospital.web.dao.BoardDAO;
import com.hospital.web.domain.ArticleDTO;
import com.hospital.web.service.BoardService;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired BoardService service;
	@Autowired BoardDAO dao;
	
	 @Override
	    public int addArticle(ArticleDTO param) throws Exception {
		return dao.insert(param);
	    }
	    @Override
	    public ArticleDTO findOne(ArticleDTO param) throws Exception {
		return dao.selectBySeq(param);
	    }

	    @Override
	    public List<ArticleDTO> findSome(String[] param) throws Exception {
		return dao.selectByWord(param);
	    }
	    @Override
	    public List<ArticleDTO> list(int[] pageArr){
		return dao.selectAll(pageArr);
	    }
	    @Override
	    public int update(ArticleDTO param) throws Exception {
		return dao.update(param);
	    }
	    @Override
	    public int delete(ArticleDTO param) throws Exception{
		return dao.delete(param);
	    }
	    @Override
	    public int count(){
		int size=0;
		try {
		    size=dao.count();
		   
		} catch (Exception e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}
		return size;
	    }
}
