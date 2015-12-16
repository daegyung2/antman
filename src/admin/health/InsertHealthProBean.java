package admin.health;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.HealthDTO;

@Controller
public class InsertHealthProBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/insertHealthPro.do")
	public String insertHealthPro(HealthDTO dto){
		sqlMapClient.insert("health.inserthl",dto);
		return "healthList.do";
	}

}
