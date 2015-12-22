package admin.decease;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DeceaseDTO;

@Controller
public class InsertDeceaseProBean {

	@RequestMapping("/insertDeceasePro.do")
	public String insertDeceasePro(HttpServletRequest request,DeceaseDTO dto){
	    String bid = (String)request.getAttribute("bid");
	    String deid = (String)request.getAttribute("deid");
	    String depart_id = (String)request.getAttribute("depart_id");
	    System.out.println(bid);
	    System.out.println(deid);
	    System.out.println(depart_id);
		return "/admin/decease/insertDecease.jsp";
	}
}
