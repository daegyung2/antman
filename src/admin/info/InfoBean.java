package admin.info;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import admin.bean.MemberDTO;
import login.bean.LoginDataBean;

@Controller
public class InfoBean {

	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/memberinfo.do")
	public String info(LoginDataBean ldto, HttpServletRequest request){
	
		List memlist = sqlMapClient.queryForList("member.memberlist",ldto);
		
		System.out.println(memlist.size());
		int member = (Integer)sqlMapClient.queryForObject("info.memcount",ldto);
		int doctor = (Integer)sqlMapClient.queryForObject("info.doctorcount",ldto);
		int employee = (Integer)sqlMapClient.queryForObject("info.employeecount",ldto);
		int pain = (Integer)sqlMapClient.queryForObject("info.paincount",ldto);
		int man = (Integer)sqlMapClient.queryForObject("info.mancount",ldto);
		int woman = (Integer)sqlMapClient.queryForObject("info.womancount",ldto);
		
		int one =  (Integer)sqlMapClient.queryForObject("info.one",ldto);
		int two =  (Integer)sqlMapClient.queryForObject("info.two",ldto);
		int three =  (Integer)sqlMapClient.queryForObject("info.three",ldto);
		int four =  (Integer)sqlMapClient.queryForObject("info.four",ldto);
		int five =  (Integer)sqlMapClient.queryForObject("info.five",ldto);
		int six =  (Integer)sqlMapClient.queryForObject("info.six",ldto);
		int seven =  (Integer)sqlMapClient.queryForObject("info.seven",ldto);
		int eight =  (Integer)sqlMapClient.queryForObject("info.eight",ldto);
		int nine =  (Integer)sqlMapClient.queryForObject("info.nine",ldto);
		int ten =  (Integer)sqlMapClient.queryForObject("info.ten",ldto);
		
		request.setAttribute("member", member);
		request.setAttribute("doctor", doctor);
		request.setAttribute("employee", employee);
		request.setAttribute("pain", pain);
		request.setAttribute("woman", woman);
		request.setAttribute("man", man);
		request.setAttribute("memlist", memlist);
		request.setAttribute("one", one);
		request.setAttribute("two", two);
		request.setAttribute("three", three);
		request.setAttribute("four", four);
		request.setAttribute("five", five);
		request.setAttribute("six", six);
		request.setAttribute("seven", seven);
		request.setAttribute("eight", eight);
		request.setAttribute("nine", nine);
		request.setAttribute("ten", ten);
		
		return "/admin/info/memberinfo.jsp";
	}
}