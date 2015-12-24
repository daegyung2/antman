package admin.decease;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.DeceaseDTO;

@Controller
public class UpdateDeceaseBean {
    @Autowired
    private SqlMapClientTemplate sqlMapClient;
    private DeceaseDTO dDto;
	
    @RequestMapping("/updateDecease.do")
	public ModelAndView updateDecease(DeceaseDTO dto){
    	dDto = (DeceaseDTO)sqlMapClient.queryForObject("decease.selectOne",dto);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/decease/updateDecease.jsp");
		mv.addObject("dto",dDto);
		return mv;
	}
}
