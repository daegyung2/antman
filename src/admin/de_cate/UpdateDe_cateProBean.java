package admin.de_cate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.De_cateDTO;

@Controller
public class UpdateDe_cateProBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/updateDe_catePro.do")
	public String updatePro(@ModelAttribute De_cateDTO dto){
		sqlMapClient.update("de_cate.update",dto);
		return "de_cateList.do";
	}

}
