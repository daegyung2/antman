package reservation;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DepartmentDTO;
import treatmentteamVO.SearchTreatmentTeamVO;


@Controller
public class Reservationpro {

	
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private String no;
	
	
	@RequestMapping("/detailreservation.do")
	public String detailreservation(HttpServletRequest request,ReservationVO dto,DepartmentDTO dpdto,SearchTreatmentTeamVO tmdto){
		String jumin1 =(String)dto.getJumin1();
		String jumin2 =(String)dto.getJumin2();
		String name =(String)dto.getName();

		
		  
		List list = sqlMapClient.queryForList("treatment.selecttreatment1", dpdto);
		List lista = sqlMapClient.queryForList("treatment.selecttreatment2", dpdto);
		List listb = sqlMapClient.queryForList("treatment.selecttreatment3", dpdto);
		List listc = sqlMapClient.queryForList("treatment.selecttreatment4", dpdto);
		
		
		request.setAttribute("list",list);
		request.setAttribute("lista",lista);
		request.setAttribute("listb",listb);
		request.setAttribute("listc",listc);
		request.setAttribute("jumin1",jumin1);
		request.setAttribute("jumin2",jumin2);
		request.setAttribute("name",name);

		
		
		
		return "/reservation/detailreservations.jsp";
	}
	
	
	@RequestMapping("/detailreservationsearch.do")
	public String detailreservationsearch(HttpServletRequest request,ReservationVO dto,SearchTreatmentTeamVO tmdto){
		String drname = (String)tmdto.getDrname();
		String dpname = (String)tmdto.getDpname();
		String jumin1 =(String)dto.getJumin1();
		String jumin2 =(String)dto.getJumin2();
		String name =(String)dto.getName();
		
		 List tmslist = sqlMapClient.queryForList("treatment.searchtreatmentteam", tmdto.getDpname());
		  SearchTreatmentTeamVO tmsdto = (SearchTreatmentTeamVO)sqlMapClient.queryForObject("treatment.searchname", tmdto.getDpname());
		  System.out.println(tmslist.size());
		 
		 if(tmslist.size() == 0){
			 dpname = no;
		 }
		 
		 request.setAttribute("dpname",dpname);
		 request.setAttribute("drname",drname);
		 request.setAttribute("jumin1",jumin1);
		 request.setAttribute("jumin2",jumin2);
		 request.setAttribute("name",name);
		 request.setAttribute("tmsdto", tmsdto);
		 request.setAttribute("tmslist", tmslist);
	return "/detailreservation.do";
	}
	
	
	
	
	
	@RequestMapping("/detailreservationpro.do")
	public String detailreservationpro(HttpServletRequest request,ReservationVO dto){
		String year =(String)dto.getYear();
		String month =(String)dto.getMonth();
		String day =(String)dto.getDay();
		String hour =(String)dto.getHour();
		String minute =(String)dto.getMinute();
		String adate = year+month+day+hour+':'+minute;
		dto.setAdate(adate);
		System.out.println(adate);
	
		sqlMapClient.insert("reservation.reservationinsert",dto);
		return "/reservation/detailreservationpro.jsp";
	}

}


