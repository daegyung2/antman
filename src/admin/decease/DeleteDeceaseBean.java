package admin.decease;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DeceaseDTO;

@Controller
public class DeleteDeceaseBean {
   @Autowired
   private SqlMapClientTemplate sqlMapClient;
	
   
   @RequestMapping("/deleteDecease.do")
	public String deletedisease(DeceaseDTO dto){
	   dto.setDename("ªË¡¶µ -"+dto.getDename());
	   sqlMapClient.update("decease.delete",dto);
		return "deceaseList.do";
	}
}
