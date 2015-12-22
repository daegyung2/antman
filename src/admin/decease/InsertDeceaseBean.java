package admin.decease;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.Body_partDTO;
import admin.bean.De_cateDTO;
import admin.bean.DepartmentDTO;

@Controller
public class InsertDeceaseBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private int x;
	private int decid;
	private List b_list;
	private List de_list;
	private List depart_list;
	
	@RequestMapping("/insertDecease.do")
	public String insertDecease(HttpServletRequest request,Body_partDTO b_dto,De_cateDTO de_dto,DepartmentDTO depart_dto){
		b_list = sqlMapClient.queryForList("body.selectList",b_dto);
		de_list = sqlMapClient.queryForList("de_cate.selectList",de_dto);
		depart_list = sqlMapClient.queryForList("depart.selectList",depart_dto);
		x = (int) sqlMapClient.queryForObject("decease.count");
		if(x == 0){
			decid = 1;
			request.setAttribute("decid", decid);
			return "/admin/decease/insertDecease.jsp";
		}else{
			decid = (int) sqlMapClient.queryForObject("decease.max") + 1;
			request.setAttribute("decid", decid);
			return "/admin/decease/insertDecease.jsp";
		}
	}
	@ModelAttribute("b_list")
	public List getB_list(Body_partDTO b_dto){
		return sqlMapClient.queryForList("body.selectList",b_dto);
	}
	
	@ModelAttribute("de_list")
	public List getDe_list(De_cateDTO de_dto){
		return de_list = sqlMapClient.queryForList("de_cate.selectList",de_dto);
	}

	
	@ModelAttribute("depart_list")
	public List getDepart_list(DepartmentDTO depart_dto){
		return sqlMapClient.queryForList("depart.selectList",depart_dto);
	}
}
