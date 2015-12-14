package faq;

import java.sql.Connection;
import java.util.ArrayList;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import java.sql.*;

public class faqDAO {

	private static faqDAO instance = new faqDAO();
	
	public static faqDAO getInstance(){
		return instance;
	}
	private faqDAO(){}
	
	private Connection getConnection() throws Exception {   
		Context initCtx = new InitialContext(); // 
		Context envCtx = (Context) initCtx.lookup("java:comp/env"); 
		DataSource ds = (DataSource)envCtx.lookup("jdbc/orcl"); 
		return ds.getConnection();
	}
	
	public void insertArticle(faqDTO article) throws Exception
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int fid =  article.getFid();
		int number=0;
		String sql="";
		
		try{
			conn = getConnection();
			pstmt = conn.prepareStatement("select max(fid) from faq");
			rs = pstmt.executeQuery();
			if(rs.next())
				number=rs.getInt(1)+1;
			else
				number=1;
			
			sql= " insert into faq(fid,category,subject,content) values(faq_seq.NEXTVAL,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, article.getCategory());
			pstmt.setString(2, article.getSubject());
			pstmt.setString(3, article.getContent());
			
			pstmt.executeUpdate();
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			if (rs!=null) try{rs.close();}catch(SQLException ex	){}		
			if (pstmt != null) try{pstmt.close();} catch(SQLException ex) {}
			if (conn != null) try{conn.close();} catch(SQLException ex){}
		
			
			
		}
	}

	public faqDTO updateArticle(faqDTO article) throws Exception { 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql="";

		try {
			conn = getConnection();
	        
	        pstmt = conn.prepareStatement (sql="update faq set category=?,question=?,answer=? where fid=?");
			
	        pstmt.setString(1, article.getCategory());
			pstmt.setString(2, article.getSubject());
			pstmt.setString(3, article.getContent());
			pstmt.setInt(3, article.getFid());
			
			pstmt.executeUpdate();
			
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		
	} return article;
	}
	public int getArticleCount() throws Exception
	{
		Connection conn= null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x = 0;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select count(*) from faq");
			rs = pstmt.executeQuery();
			if (rs.next()){
				x=rs.getInt(1);
			}
		}catch(Exception ex){
			ex.printStackTrace();
			}finally{
				if (rs != null) try { rs.close(); } catch(SQLException ex) {}
				if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
				if (conn != null) try { conn.close(); } catch(SQLException ex) {}
			}return x;
		}
	

public faqDTO getArticle(int fid) throws Exception{
	Connection conn = null;
	PreparedStatement pstmt =null;
	ResultSet rs = null;
	faqDTO article = null;
	try{
		conn = getConnection();
		pstmt = conn.prepareStatement("select * from faq where fid=?");
		pstmt.setInt(1, fid);
		rs = pstmt.executeQuery();
		if(rs.next()){
			article = new faqDTO();
			article.setFid(rs.getInt("fid"));
			article.setCategory(rs.getString("category"));
			article.setSubject(rs.getString("subject"));
			article.setContent(rs.getString("content"));
		}
	}catch(Exception ex) {
			ex.printStackTrace();
		}finally {	
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		return article;
	}


public faqDTO updateGetArticle(int fid) throws Exception {
	 Connection conn = null;
	 PreparedStatement pstmt = null;
	 ResultSet rs = null;
	 faqDTO article = null;
	 try{
		 conn= getConnection();
		 pstmt = conn.prepareStatement( "select * from faq where fid = ?");
				pstmt.setInt(1, fid);
		 rs = pstmt.executeQuery();
		 
		 if(rs.next()){
			 article = new faqDTO();
			 article.setFid(rs.getInt("fid"));
			 article.setCategory(rs.getString("category"));
			 article.setSubject(rs.getString("subject"));
			 article.setContent(rs.getString("content"));
	
		 	}
	 } catch(Exception ex){
		 ex.printStackTrace();
	 }finally{
		 if (rs != null) try{rs.close();} catch(SQLException ex) {}			
		 if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	 }
	 return article;
}

public List getArticles(int start, int end) throws Exception{
	Connection conn=null;
	PreparedStatement pstmt =null;
	ResultSet rs = null;
	List articleList=null;
	
	try{
		conn = getConnection();
		pstmt = conn.prepareStatement(
				"select fid,category,subject,content,r "
				+ "from (select fid,category,subject,content,rownum r "+
				"from (select fid,category,subject,content "+
				"from faq order by fid desc, fid asc) order by fid desc, fid asc) where r >= ? and r <= ?");
		pstmt.setInt(1, start);
		pstmt.setInt(2, end);
		
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			articleList = new ArrayList(end);
			do{
				faqDTO article = new faqDTO();
				article.setFid(rs.getInt("fid"));
				article.setCategory(rs.getString("category"));
				article.setSubject(rs.getString("subject"));
				article.setContent(rs.getString("content"));
				articleList.add(article);
				
			}while(rs.next());
		}
		}catch(Exception ex){
			ex.printStackTrace();
		}finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}return articleList;
	}

public int deleteArticle(int fid) throws Exception { // 게시글 삭제 메서드, 매개 변수는 num과 비밀번호인 passwd
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs= null;

	try {
		conn = getConnection();
		pstmt = conn.prepareStatement(
				"delete from faq where fid=?");
				pstmt.setInt(1, fid);
				pstmt.executeUpdate(); //쿼리문 실행 
			
		
	} catch(Exception ex) {
		ex.printStackTrace();
	} finally {
		if (rs != null) try { rs.close(); } catch(SQLException ex) {}
		if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
		if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	}
	return fid; // x값을 리턴함.
}
}