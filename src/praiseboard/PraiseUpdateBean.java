package praiseboard;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DoctorDTO;
import admin.bean.EmployeeDTO;

@Controller
public class PraiseUpdateBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/praiseupdate.do")
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
			   return "/praiseboard/praiseupdate.jsp";
		   
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
		
		
		return "/praiseboard/praiseupdate.jsp";
	}
	
	
	@RequestMapping("/praiseupdatepro.do")
	public String praiseupdatepro(HttpServletRequest request,PraiseVO dto){
		System.out.println(dto.getEname());
		System.out.println(dto.getEid());
		if(dto.getEname() != null){
			sqlMapClient.update("praise.updateeidpraise",dto);
		}else if(dto.getDrname() != null){
		sqlMapClient.update("praise.updatepraise",dto);
		}
		
		return "redirect:praiseboard.do";
	}
	
	
	
	
		@RequestMapping("/praisedoctorupdate.do")
		public String praisedoctorupdate(HttpServletRequest request,PraiseVO dto, EmployeeDTO edto, DoctorDTO ddto){
			 System.out.println(dto.getDrid());
			 System.out.println(dto.getPid());
				int pid =(int)dto.getPid();
				int drid = dto.getDrid();
				String drname = (String) sqlMapClient.queryForObject("doctor.name",dto.getDrid());//의사의 이름을 구해서 보낸다.
				
				/*
				String ename = (String) sqlMapClient.queryForObject("employee.ssibal",edto);
				*/
				
				
				
			      String dpname = (String)dto.getDpname();
			      
			      List dplist = sqlMapClient.queryForList("praise.selectdepart",dto);
			      
			      List drlist = sqlMapClient.queryForList("praise.selectdoctor",dto.getDpname());
			   /*   
			      List delist = sqlMapClient.queryForList("employee.selectemployee",dto.getDpname());*/
				

				
				dto = (PraiseVO)sqlMapClient.queryForObject("praise.finddoctor",dto.getPid());
				System.out.println(dto);
		
				
				
				
				   request.setAttribute("drid",drid);
				   request.setAttribute("drname",drname);
				   request.setAttribute("drid",drid);
				 /*     request.setAttribute("delist",delist);*/
				      request.setAttribute("dplist",dplist);
				      request.setAttribute("drlist",drlist);
				request.setAttribute("pid",pid);
				request.setAttribute("dto",dto);
				
			return "/praiseboard/praiseupdate.jsp";
		}
}

