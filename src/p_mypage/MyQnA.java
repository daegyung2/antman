package p_mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DoctorDTO;
import admin.bean.MyQnADTO;
import praiseboard.PraiseVO;

@Controller
public class MyQnA {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	String view;
	
	@RequestMapping("/MyQnA.do")
	public String MyQnA(HttpServletRequest request,DoctorDTO ddto,MyQnADTO dtoa, PraiseVO dto, String drname, HttpSession session){
		
		dtoa.setId((String)session.getAttribute("memId"));
	
		
		List dplist = sqlMapClient.queryForList("praise.selectdepart", dto);
		List drlist = sqlMapClient.queryForList("praise.selectdoctor",dto.getDpname());
		List list=sqlMapClient.queryForList("MyQnA.selectMyQnA", dtoa.getId());
	    ddto = (DoctorDTO) sqlMapClient.queryForObject("doctor.doctordrid",dtoa.getDrname());

		
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
	      request.setAttribute("ddto", ddto);
	   
	 
	      
	      return "/p_mypage/MyQnA.jsp";
	}
	
	@RequestMapping("/MyQnAPro.do")
	public String MyQnAPro(HttpServletRequest request, MyQnADTO dtoa, String drname, HttpSession session){
		sqlMapClient.insert("MyQnA.insertMyQnA", dtoa);
		
		List list = sqlMapClient.queryForList("MyQnA.selectMyQnA", dtoa.getId());
		request.setAttribute("list", list);
	
		return "/p_mypage/MyQnA.jsp";
	}
	
	
	@RequestMapping("/MyQnAanswer.do")
	public String MyQnAdr(HttpServletRequest request, MyQnADTO dto, String drname,HttpSession session){
		int drid = Integer.parseInt(request.getParameter("drid"));
		dto.setDrid(drid);
		int qid = dto.getQid();
		List list = sqlMapClient.queryForList("MyQnA.selectDr", dto.getDrid());

		request.setAttribute("list", list);
		request.setAttribute("qid", qid);
		System.out.println(list.size());
	
		return "/d_mypage/d_answer.jsp";
		
	}
	
	
}
