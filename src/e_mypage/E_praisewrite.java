package e_mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DepartmentDTO;
import admin.bean.DoctorDTO;
import admin.bean.EmployeeDTO;
import praiseboard.PraiseVO;




@Controller
public class E_praisewrite {
   
   @Autowired
   private SqlMapClientTemplate sqlMapClient;
   String view;
   
   @RequestMapping("/e_praisewrite.do")
   public String write(HttpServletRequest request , PraiseVO dto , String drname,EmployeeDTO edto, DoctorDTO ddto){
	   
	   
	   
      String dpname = (String)dto.getDpname();
      System.out.println(dpname);
      List dplist = sqlMapClient.queryForList("praise.selectdepart",dto);
      
      List drlist = sqlMapClient.queryForList("praise.selectdoctor",dto.getDpname());
      List delist = sqlMapClient.queryForList("employee.selectemployee",dto.getDpname());
      
      ddto = (DoctorDTO) sqlMapClient.queryForObject("doctor.doctorprselect", ddto.getDrId());
      edto = (EmployeeDTO)sqlMapClient.queryForObject("employee.employeeselect", edto.getEid());
      /*dto = (PraiseVO)sqlMapClient.queryForObject("priase.selectdridname",drname);*/
     
 	 if(drlist.size() == 0){
		 view = "no";
	 }else if (drlist.size() != 0){
		 view = "yes";
	 }
 	System.out.println(view);
      
 	  request.setAttribute("delist",delist);
      request.setAttribute("view", view);
      request.setAttribute("dplist",dplist);
      request.setAttribute("drlist",drlist);
      /*request.setAttribute("drid",dto);*/
      request.setAttribute("drname",drname);
      request.setAttribute("ddto", ddto);
      return "/e_mypage/e_praisewrite.jsp";
   } 
    
   
   @RequestMapping("/e_praisepro.do")
   public String writepro(PraiseVO dto, EmployeeDTO edto){
    
	   if(dto.getDrid() != 0){
		      sqlMapClient.insert("praise.insertpraise", dto);      
			   return "redirect:praiseboard.do";
			   }else if(edto.getEname() != null){
				    sqlMapClient.insert("praise.insertpraiseeid", dto);  
		   }else{}
	
	   			return "redirect:praiseboard.do";
    
   }
   
   
   @RequestMapping("/e_praisecontent.do")
   public String VIEW(HttpServletRequest request,PraiseVO dto,EmployeeDTO edto)throws Exception{
      int pid =(int)dto.getPid();
      System.out.println(dto.getPid());
      
      dto = (PraiseVO)sqlMapClient.queryForObject("praise.finddoctor",dto.getPid());
      edto = (EmployeeDTO)sqlMapClient.queryForObject("employee.findemployee",edto.getPid());
      
      if(dto != null){
          request.setAttribute( "dto",dto );
          return "/e_mypage/e_praisecontent.jsp";
         }else if(edto != null){
          request.setAttribute( "edto",edto );}
         else{}
      
      request.setAttribute("pid",pid);
      request.setAttribute( "dto",dto );
      return "/e_mypage/e_praisecontent.jsp";
   }
   
   

}