package com.hospital.web.daoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hospital.web.dao.BoardDAO;
import com.hospital.web.domain.ArticleDTO;
@Repository
public class BoardDAOImpl implements BoardDAO{
		@Autowired BoardDAO dao;
		@Autowired BoardDAOImpl BoardDAOImpl;
		@Override
		public int insert(ArticleDTO param) throws Exception {
			String sql=String.format("%s","");
			return 0;
		}
		@Override
		public ArticleDTO selectBySeq(ArticleDTO param) throws Exception {
			ArticleDTO article  = new ArticleDTO();
			String sql = String.format("SELECT art_seq, pat_id, title, content, regdate, readCount FROM Article"
			+" WHERE art_seq='%s'","");
		
			return article;
		}
		@Override
		public List<ArticleDTO> selectByWord(String[] param) throws Exception {
			List<ArticleDTO> list = new ArrayList<ArticleDTO>();
			String sql="SELECT art_seq, id, title, content, regdate, readCount FROM Article WHERE " 
			+ param[0] + " LIKE '%"+param[1]+"%'";
		
			return list;
		}
		@Override
		public List<ArticleDTO> selectAll(int[] pageArr) {
			String sql = String.format("SELECT t2.* "+
					"FROM (SELECT ROWNUM seq,t.* "+
					"FROM (SELECT * FROM ARTICLE ORDER BY art_seq DESC) t) t2 "+
					"WHERE t2.seq BETWEEN %s AND %s ",pageArr[0],pageArr[1]);
		List<ArticleDTO> list = new ArrayList<ArticleDTO>();
		return list;
		}
		@Override
		public int update(ArticleDTO param) throws Exception {
			String.format("UPDATE Article SET title = '%s',"
					+ "content = '%s' WHERE id='%s'","");
			return 0;
		}
		@Override
		public int delete(ArticleDTO param) throws Exception {
			String.format("DELETE FROM Article WHERE id = '%s' and art_seq='%s'","");
			return 0;
		}
		@Override
		public int count() {
			int count=0;
			String sql = "SELECT COUNT(*) COUNT FROM Article";
			return count;
		}

		
}
