package p_mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DoctorDTO;
import admin.bean.EmployeeDTO;
import praiseboard.PraiseVO;

@Controller
public class P_praiseupdateBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	
	
	@RequestMapping("/p_praiseupdate.do")
	public String praiseupdate(HttpServletRequest request,PraiseVO dto, EmployeeDTO edto, DoctorDTO ddto){
		 System.out.println(edto.getEid());
		int pid =(int)dto.getPid();
		int eid = dto.getEid();
		int drid = dto.getDrid();
		String name = (String) sqlMapClient.queryForObject("employee.name",dto.getEid());
		
		/*
		String ename = (String) sqlMapClient.queryForObject("employee.ssibal",edto);
		*/
		
		
		
	      String dpname = (String)dto.getDpname();
	      
	      List dplist = sqlMapClient.queryForList("praise.selectdepart",dto);
	      
	      List drlist = sqlMapClient.queryForList("praise.selectdoctor",dto.getDpname());
	      
	      List delist = sqlMapClient.queryForList("employee.selectemployee",dto.getDpname());
		

		
		dto = (PraiseVO)sqlMapClient.queryForObject("praise.finddoctor",dto.getPid());
		System.out.println(dto);
		   edto = (EmployeeDTO)sqlMapClient.queryForObject("employee.findemployee",edto.getPid());
		   System.out.println(edto);  
		   if(dto != null){
			   request.setAttribute( "dto",dto );
			   return "/p_mypage/p_praiseupdate.jsp";
		   
		   }else if(edto != null){
			   request.setAttribute( "edto",edto );
		   
		   }else{}
		   
		   System.out.println(dplist.size());
		   request.setAttribute("eid",eid);
		   request.setAttribute("name",name);
		   request.setAttribute("drid",drid);
		      request.setAttribute("delist",delist);
		      request.setAttribute("dplist",dplist);
		      request.setAttribute("drlist",drlist);
		request.setAttribute("pid",pid);
		
		
		return "/p_mypage/p_praiseupdate.jsp";
	}
	
	
	@RequestMapping("/p_praiseupdatepro.do")
	public String praiseupdatepro(HttpServletRequest request,PraiseVO dto){
		System.out.println(dto.getEname());
		System.out.println(dto.getEid());
		if(dto.getEname() != null){
			sqlMapClient.update("praise.updateeidpraise",dto);
		}else if(dto.getDrname() != null){
		sqlMapClient.update("praise.updatepraise",dto);
		}
		
		return "p_praiseboard.do";
	}
	
	
	
	
	
	
	
	
	

	/*@RequestMapping("/p_praiseupdate.do")
	public String p_praiseupdate(HttpServletRequest request,PraiseVO dto){
		int pid =(int)dto.getPid();
		dto = (PraiseVO)sqlMapClient.queryForObject("praise.finddoctor",dto.getPid());
		request.setAttribute("pid",pid);
		request.setAttribute( "dto",dto );
		return "/p_mypage/p_praiseupdate.jsp";
	}
	
	
	@RequestMapping("/p_praiseupdatepro.do")
	public String praiseupdatepro(HttpServletRequest request,PraiseVO dto){
		
		sqlMapClient.update("praise.updatepraise",dto);

		return "/p_praiseboard.do";
	}*/
	
}
