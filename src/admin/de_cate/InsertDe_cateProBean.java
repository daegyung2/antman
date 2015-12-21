package admin.de_cate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.De_cateDTO;

@Controller
public class InsertDe_cateProBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	
	@RequestMapping("/insertDe_catePro.do")
	public String insertPro(De_cateDTO dto){
		sqlMapClient.insert("de_cate.insert", dto);
		return "de_cateList.do";
	}

}
