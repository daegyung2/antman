package admin.de_cate;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.De_cateDTO;

@Controller
public class DeleteDe_cateProBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	

	@RequestMapping("/deleteDe_catePro.do")
	public String deleteDe_cate(@ModelAttribute De_cateDTO dto,HttpServletRequest request){
		dto.setStatus("ªË¡¶µ ");
		sqlMapClient.update("de_cate.delete",dto);
		return "de_cateList.do";
	}
}
