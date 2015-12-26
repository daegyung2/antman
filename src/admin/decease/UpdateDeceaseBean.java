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
public class UpdateDeceaseBean {
    @Autowired
    private SqlMapClientTemplate sqlMapClient;
    private DeceaseDTO dDto;
	
    @RequestMapping("/updateDecease.do")
	public ModelAndView updateDecease(DeceaseDTO dto,Body_partDTO bdto,De_cateDTO de_dto,DepartmentDTO departDTO){
    	dDto = (DeceaseDTO)sqlMapClient.queryForObject("decease.selectOne",dto);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/decease/updateDecease.jsp");
		mv.addObject("dto",dDto);
		return mv;
	}
}
