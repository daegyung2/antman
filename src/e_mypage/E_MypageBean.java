package e_mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DoctorDTO;
import admin.bean.MainBoardDTO;
import admin.bean.ScheduleDTO;
import admin.bean.TreatmentteamDTO;
import praiseboard.PraiseVO;



@Controller
public class E_MypageBean {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List slist;
	@RequestMapping("/e_mypage.do")
	public String e_mypage(ScheduleDTO dto, DoctorDTO ddto, HttpServletRequest request ){
					//select dpname from employee where eid = #eid# 
		int drid =dto.getDrid();
		System.out.println(drid);
		System.out.println(dto.getEid());
		System.out.println(dto.getDrid());
		
		String dpname = (String)sqlMapClient.queryForObject("employee.selectdpname",dto.getEid());
		dto.setDpname(dpname);			//select * from employee where dpname = #dpname# and to_char(sdate , 'YYYY-MM-DD') = to_char(sysdate , 'YYYY-MM-DD')
		
		if(dto.getDrid() == 0 ){
		slist = sqlMapClient.queryForList("schedule.drschedulecheck",dto.getDpname());
		}else if(dto.getDrid() != 0){
		slist = sqlMapClient.queryForList("schedule.drschedulecheckB",dto.getDrid());
		}else{}
		
		
		ddto.setDpname(dpname);
		
		//select name from doctor where dpname = #dpname#
		List dlist = sqlMapClient.queryForList("doctor.selectDrdp", ddto);
		
		/* List drlist = sqlMapClient.queryForList("praise.selectdoctor",dto.getDpname());
		*/
		
		request.setAttribute("dlist", dlist);
		request.setAttribute("slist", slist);
		/*request.setAttribute("drlist", drlist);*/
		

		
	 //ºä if(dlist != null){dlist}
	/*	int drid = Integer.parseInt(request.getParameter("drid"));
		 dto.setDrid(drid);
		
		 List list = sqlMapClient.queryForList("schedule.drschedulecheck",dto.getDrid());
		 request.setAttribute("list", list);*/
		//ºä if(list != null)
		return "/e_mypage/e_mypage.jsp"; 
	
	}
	
	
	


}
