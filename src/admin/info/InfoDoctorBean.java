package admin.info;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import admin.bean.MemberDTO;
import admin.bean.ScheduleDTO;
import login.bean.LoginDataBean;
import praiseboard.PraiseVO;

@Controller
public class InfoDoctorBean {

	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	List drlist;
	@RequestMapping("/doctorinfo.do")
	public String info(ScheduleDTO sdto, HttpServletRequest request,PraiseVO pdto){

		
		
		
		if(pdto.getDpname() != null && pdto.getDrid() == 0){
			List slist= sqlMapClient.queryForList("schedule.schedulelistdp",sdto);
			System.out.println(slist.size());
			int allcount = (Integer)sqlMapClient.queryForObject("schedule.allcountdp",sdto);
			int one = (Integer)sqlMapClient.queryForObject("schedule.onecountdp",sdto);
			int two = (Integer)sqlMapClient.queryForObject("schedule.twocountdp",sdto);
			int three = (Integer)sqlMapClient.queryForObject("schedule.threecountdp",sdto);
			int four = (Integer)sqlMapClient.queryForObject("schedule.fourcountdp",sdto);
			List dplist = sqlMapClient.queryForList("praise.selectdepart",pdto);
			List drlist = sqlMapClient.queryForList("praise.selectdoctor",sdto.getDpname());
			request.setAttribute("one", one);
			request.setAttribute("two", two);
			request.setAttribute("three", three);
			request.setAttribute("four", four);
			request.setAttribute("slist", slist);
			request.setAttribute("dplist", dplist);
			request.setAttribute("drlist", drlist);
			request.setAttribute("allcount", allcount);
			return "/admin/info/doctorinfo.jsp";
		}else if(pdto.getDrid() != 0){
			System.out.println(pdto.getDrid());
			List slist= sqlMapClient.queryForList("schedule.schedulelistdr",sdto);
			
			int allcount = (Integer)sqlMapClient.queryForObject("schedule.allcountdr",sdto);
			int one = (Integer)sqlMapClient.queryForObject("schedule.onecountdr",sdto);
			int two = (Integer)sqlMapClient.queryForObject("schedule.twocountdr",sdto);
			int three = (Integer)sqlMapClient.queryForObject("schedule.threecountdr",sdto);
			int four = (Integer)sqlMapClient.queryForObject("schedule.fourcountdr",sdto);
			List dplist = sqlMapClient.queryForList("praise.selectdepart",pdto);
			List drlist = sqlMapClient.queryForList("praise.selectdoctor",pdto.getDpname());
			
			
			request.setAttribute("one", one);
			request.setAttribute("two", two);
			request.setAttribute("three", three);
			request.setAttribute("four", four);
			request.setAttribute("slist", slist);
			request.setAttribute("dplist", dplist);
			request.setAttribute("drlist", drlist);
			request.setAttribute("allcount", allcount);
			return "/admin/info/doctorinfo.jsp";
		}
		
		
		
		
		
		List slist= sqlMapClient.queryForList("schedule.schedulelistsc",sdto);
		
		int allcount = (Integer)sqlMapClient.queryForObject("schedule.allcountsc",sdto);
		int one = (Integer)sqlMapClient.queryForObject("schedule.onecountsc",sdto);
		int two = (Integer)sqlMapClient.queryForObject("schedule.twocountsc",sdto);
		int three = (Integer)sqlMapClient.queryForObject("schedule.threecountsc",sdto);
		int four = (Integer)sqlMapClient.queryForObject("schedule.fourcountsc",sdto);
		List dplist = sqlMapClient.queryForList("praise.selectdepart",pdto);
		
		request.setAttribute("one", one);
		request.setAttribute("two", two);
		request.setAttribute("three", three);
		request.setAttribute("four", four);
		request.setAttribute("slist", slist);
		request.setAttribute("dplist", dplist);
		request.setAttribute("drlist", drlist);
		request.setAttribute("allcount", allcount);
		
	return "/admin/info/doctorinfo.jsp";
	}
}
