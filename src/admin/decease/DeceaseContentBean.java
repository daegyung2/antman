package admin.decease;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.Body_partDTO;
import admin.bean.De_cateDTO;
import admin.bean.DeceaseDTO;
import admin.bean.DepartmentDTO;

@Controller
public class DeceaseContentBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private DeceaseDTO dto2;
	private Body_partDTO bdto2;
	private De_cateDTO de_dto2;
	private DepartmentDTO departDTO2;
	
	@RequestMapping("/deceaseContent.do")
	public ModelAndView deceaseContent(DeceaseDTO dto,Body_partDTO bdto,De_cateDTO de_dto,DepartmentDTO departDTO){
		dto2 = (DeceaseDTO) sqlMapClient.queryForObject("decease.selectOne",dto);
		bdto.setBid(dto2.getBid());
		de_dto.setDeid(dto2.getDeid());
		departDTO.setDepart_id(dto2.getDepart_id());
		bdto2 = (Body_partDTO) sqlMapClient.queryForObject("body.selectOne",bdto);
		de_dto2 = (De_cateDTO) sqlMapClient.queryForObject("de_cate.selectOne",de_dto.getDeid());
		departDTO2 = (DepartmentDTO) sqlMapClient.queryForObject("depart.selectOne",departDTO.getDepart_id());
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/decease/deceaseContent.jsp");
		mv.addObject("dto",dto2);
		mv.addObject("bdto",bdto2);
		mv.addObject("de_dto",de_dto2);
		mv.addObject("departDTO",departDTO2);
		return mv;
	}

}
