package admin.info;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import admin.bean.AppointmentDTO;
import admin.bean.MemberDTO;
import login.bean.LoginDataBean;
import praiseboard.PraiseVO;

@Controller
public class InfoAppointBean {

	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	List alist;
	@RequestMapping("/appointinfo.do")
	public String info(AppointmentDTO adto, PraiseVO pdto, HttpServletRequest request){
		
		//dpname 
		
		if(adto.getDpname() != null ){
		alist = sqlMapClient.queryForList("appointment.appointlistdp",adto);	
		int allcount = (Integer)sqlMapClient.queryForObject("appointment.allcountdp",adto);
		int one = (Integer)sqlMapClient.queryForObject("appointment.onecountdp",adto);
		int two = (Integer)sqlMapClient.queryForObject("appointment.twocountdp",adto);
		int three = (Integer)sqlMapClient.queryForObject("appointment.threecountdp",adto);
		int four = (Integer)sqlMapClient.queryForObject("appointment.fourcountdp",adto);
		List dplist = sqlMapClient.queryForList("praise.selectdepart",pdto);
		request.setAttribute("one", one);
		request.setAttribute("two", two);
		request.setAttribute("three", three);
		request.setAttribute("four", four);
		request.setAttribute("alist", alist);
		request.setAttribute("dplist", dplist);
		request.setAttribute("allcount", allcount);
		return "/admin/info/appointinfo.jsp";
		
		
		}else if(adto.getDpname() == null){
		alist = sqlMapClient.queryForList("appointment.appointlist",adto);
		
		}else{}
		
		
		
		
		int allcount = (Integer)sqlMapClient.queryForObject("appointment.allcount",adto);
		
		int one = (Integer)sqlMapClient.queryForObject("appointment.onecount",adto);
		int two = (Integer)sqlMapClient.queryForObject("appointment.twocount",adto);
		int three = (Integer)sqlMapClient.queryForObject("appointment.threecount",adto);
		int four = (Integer)sqlMapClient.queryForObject("appointment.fourcount",adto);
		List dplist = sqlMapClient.queryForList("praise.selectdepart",pdto);
		
		
		request.setAttribute("one", one);
		request.setAttribute("two", two);
		request.setAttribute("three", three);
		request.setAttribute("four", four);
		request.setAttribute("alist", alist);
		request.setAttribute("dplist", dplist);
		request.setAttribute("allcount", allcount);
		return "/admin/info/appointinfo.jsp";
	}
}
