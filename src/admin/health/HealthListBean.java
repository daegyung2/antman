package admin.health;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.HealthDTO;

@Controller
public class HealthListBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List healthList;
	
	@RequestMapping("/healthList.do")
	public String healthList(HealthDTO dto){
     healthList = sqlMapClient.queryForList("health.selectList",dto);
	 return "/admin/health/healthList.jsp";
	}
	
	@ModelAttribute("list")
	public List getHList(HealthDTO dto){
		return sqlMapClient.queryForList("health.selectList",dto);
	}

}
