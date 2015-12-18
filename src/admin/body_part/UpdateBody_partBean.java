package admin.body_part;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.Body_partDTO;

@Controller
public class UpdateBody_partBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;

	@RequestMapping("/updateBody_part.do")
	public String updateBody(Body_partDTO dto,HttpServletRequest request){
		int bid = (int) request.getAttribute("bid");
		dto = (Body_partDTO)sqlMapClient.queryForObject("body.selectOne",bid);
		return "/admin/body_part/updateBody_part.jsp";
	}
	
	@ModelAttribute("dto")
	public Body_partDTO getDto(Body_partDTO dto){
		return (Body_partDTO)sqlMapClient.queryForObject("body.selectOne",dto);
	}
}
