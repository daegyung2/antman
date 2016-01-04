package p_mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.MyQnADTO;
import praiseboard.PraiseVO;

@Controller
public class MyQnA {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	String view;
	
	@RequestMapping("/MyQnA.do")
	public String MyQnA(HttpServletRequest request, MyQnADTO dtoa, PraiseVO dto, String drname, HttpSession session){
		
		dtoa.setId((String)session.getAttribute("memId"));
		
		
		List dplist = sqlMapClient.queryForList("praise.selectdepart", dto);
		List drlist = sqlMapClient.queryForList("praise.selectdoctor",dto.getDpname());
		List list=sqlMapClient.queryForList("MyQnA.selectMyQnA", dtoa.getId());
		
		if(drlist.size() == 0){
			 view = "no";
		 }else if (drlist.size() != 0){
			 view = "yes";
		 }
		 
		  request.setAttribute("view", view);
	      request.setAttribute("dplist",dplist);
	      request.setAttribute("drlist",drlist);
	      request.setAttribute("drname",drname);
	      request.setAttribute("session",session);
	      request.setAttribute("list",list);
	   
	 
	      
	      return "/p_mypage/MyQnA.jsp";
	}
	
	@RequestMapping("/MyQnAPro.do")
	public String MyQnAPro(HttpServletRequest request, MyQnADTO dtoa, String drname, HttpSession session){
		sqlMapClient.insert("MyQnA.insertMyQnA", dtoa);
		
		List list = sqlMapClient.queryForList("MyQnA.selectMyQnA", dtoa.getId());
		request.setAttribute("list", list);
	
		return "/p_mypage/MyQnA.jsp";
	}
	
	
	
}
