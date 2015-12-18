package admin.body_part;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.Body_partDTO;

@Controller
public class UpdateBody_partProBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/updateBodyPro.do")
	public String updateBodyPro(Body_partDTO dto){
		sqlMapClient.update("body.update",dto);
		return "/admin/body_part/updateBody_partPro.jsp";
	}

}
