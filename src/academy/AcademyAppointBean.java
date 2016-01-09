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
		
		int check = (int)sqlMapClient.queryForObject("academy.idcheck",dto);
		
		if(check == 1 ){
			
			
			request.setAttribute("check", check);
			
			return "/academylist.do";
		}else if(check == 0){
 	   sqlMapClient.insert("academy.insertappoint", dto);
	 sqlMapClient.update("academy.minupdate",dto);
	}else{}

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
			sqlMapClient.delete("academy.deleteappoint", dto);
	 		 sqlMapClient.update("academy.deletemin",dto);
	
	return "/academylist.do";
	}
}