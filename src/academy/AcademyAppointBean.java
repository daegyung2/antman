package academy;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.AcademyDTO;
import admin.bean.DoctorDTO;

@Controller
public class AcademyAppointBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;

	
	@RequestMapping("/appointacademy.do")
	public String appointacademy(HttpServletRequest request, AcademyDTO dto, DoctorDTO ddto){

	
 	   sqlMapClient.insert("academy.insertappoint", dto);
	 sqlMapClient.update("academy.minupdate",dto);
	
	  String id = (String)request.getParameter("id");
   
     
      dto.setId(id);
    
      String aasubject = dto.getAssubject();
      dto.setAasubject(aasubject);
     
     	
	
	      	System.out.println(dto.getName());
	      	
	      	List list = sqlMapClient.queryForList("academy.selectAll",dto);
	      	
	      	request.setAttribute("list", list);
	return "/academylist.do";
	}
	
	@RequestMapping("/deleteacademy.do")
	public String appointdelete(HttpServletRequest request, AcademyDTO dto, DoctorDTO ddto){
		System.out.println(dto.getId());
			int aaid = (int)sqlMapClient.queryForObject("academy.findid",dto);
	 	   dto.setAaid(aaid);
	 	   System.out.println(aaid);
	 	  System.out.println(dto.getAsid());
			sqlMapClient.delete("academy.deleteappoint", dto);
	 		 sqlMapClient.update("academy.deletemin",dto);
	
	return "/academylist.do";
	}
}