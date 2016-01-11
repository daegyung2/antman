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
		int pid =(int)dto.getPid();
		
	      String dpname = (String)dto.getDpname();
	      System.out.println(ddto.getDrId()+1);
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
		   
		   
		      request.setAttribute("delist",delist);
		      request.setAttribute("dplist",dplist);
		      request.setAttribute("drlist",drlist);
		request.setAttribute("pid",pid);
		
		
		return "/praiseboard/praiseupdate.jsp";
	}
	
	
	@RequestMapping("/praiseupdatepro.do")
	public String praiseupdatepro(HttpServletRequest request,PraiseVO dto){
		
		sqlMapClient.update("praise.updatepraise",dto);

		return "redirect:praiseboard.do";
	}
}

