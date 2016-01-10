package e_mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import admin.bean.AppointmentSimpleDTO;


@Controller
public class E_simpleBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/e_simple.do")
	public String e_simple(AppointmentSimpleDTO dto,  HttpServletRequest request){
		
		List list = sqlMapClient.queryForList("appointment.selectsimple", dto);
		request.setAttribute("list", list);
		System.out.println(list.size());
	
	
		
		return "/e_mypage/e_simple.jsp";
	}
}
