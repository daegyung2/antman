package admin.body_part;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.Body_partDTO;

@Controller
public class InsertBody_partProBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/insertBodyPro.do")
	public String insertBodyPro(Body_partDTO dto){
		sqlMapClient.insert("body.insertBody",dto);
		return "body_partList.do";
	}
    
}
