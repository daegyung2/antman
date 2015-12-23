package admin.de_cate;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.De_cateDTO;

@Controller
public class UpdateDe_cateBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;

	

	@RequestMapping("/updateDe_cate.do")
	public String updateDe_cate(@ModelAttribute De_cateDTO dto,HttpServletRequest request){
		dto = (De_cateDTO)sqlMapClient.queryForObject("de_cate.selectOne",dto.getDeid());
		return "/admin/de_cate/updateDe_cate.jsp";
	}
	
	@ModelAttribute("dto")
	public De_cateDTO getDto(De_cateDTO dto){
		return (De_cateDTO)sqlMapClient.queryForObject("de_cate.selectOne",dto.getDeid());
	}
}
