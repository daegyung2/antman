package admin.body_part;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.Body_partDTO;

@Controller
public class DeleteBody_partBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
      
	@RequestMapping("/deleteBody_part.do")
	public String deleteBody(Body_partDTO dto){
		dto.setName("ªË¡¶µ ");
		sqlMapClient.update("body.delete",dto);
		return "body_partList.do";
	}
}
