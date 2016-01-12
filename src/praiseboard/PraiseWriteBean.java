package praiseboard;

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




@Controller
public class PraiseWriteBean {
   
   @Autowired
   private SqlMapClientTemplate sqlMapClient;

   @RequestMapping("/praisewrite.do")
   public String write(HttpServletRequest request , PraiseVO dto , DoctorDTO ddto,  EmployeeDTO edto){
	 
      String dpname = (String)dto.getDpname();
      System.out.println(ddto.getDrId()+1);
      List dplist = sqlMapClient.queryForList("praise.selectdepart",dto);
      
      List drlist = sqlMapClient.queryForList("praise.selectdoctor",dto.getDpname());
      
      List delist = sqlMapClient.queryForList("employee.selectemployee",dto.getDpname());
      /*dto = (PraiseVO)sqlMapClient.queryForObject("priase.selectdridname",drname);*/
     
      
     ddto = (DoctorDTO) sqlMapClient.queryForObject("doctor.doctorprselect", ddto.getDrId());
      
     edto = (EmployeeDTO)sqlMapClient.queryForObject("employee.employeeselect", edto.getEid());
     
      System.out.println(ddto);
    

 	
      

      request.setAttribute("delist",delist);
      request.setAttribute("dplist",dplist);
      request.setAttribute("drlist",drlist);
       request.setAttribute("edto",edto);
     request.setAttribute("ddto",ddto);
      return "/praiseboard/praisewrite.jsp";
   } 
   

   
   
   @RequestMapping("/praisepro.do")
   public String writepro(PraiseVO dto, EmployeeDTO edto){
      
	   if(dto.getDrid() != 0){
      sqlMapClient.insert("praise.insertpraise", dto);      
	   return "redirect:praiseboard.do";
	   }else if(edto.getEname() != null){
		    sqlMapClient.insert("praise.insertpraiseeid", dto);  
   }else{}
		   return "redirect:praiseboard.do";
   }
   
   
   @RequestMapping("/praisecontent.do")
   public String VIEW(HttpServletRequest request,PraiseVO dto,EmployeeDTO edto)throws Exception{
      int pid =(int)dto.getPid();
      System.out.println(dto.getPid());
    
      dto = (PraiseVO)sqlMapClient.queryForObject("praise.finddoctor",dto.getPid());

      System.out.println(edto.getPid());
     edto = (EmployeeDTO)sqlMapClient.queryForObject("employee.findemployee",edto.getPid());
 
      System.out.println(edto);
    
      if(dto != null){
      request.setAttribute( "dto",dto );
      return "/praiseboard/praisecontent.jsp";
     }else if(edto != null){
      request.setAttribute( "edto",edto );}
     else{}
      
      System.out.println(dto);
      System.out.println(edto);
      request.setAttribute("pid",pid);
      return "/praiseboard/praisecontent.jsp";
   }
   

}