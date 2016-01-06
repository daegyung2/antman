package cultureBoard;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.CultureBoardDTO;
import admin.bean.LectureBoardDTO;

@Controller
public class CultureBoardWriteBean {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/cultureboardwrite.do")
	public String Cultureboardwrite(){
		return "/ciltureboardwrite.jsp";
		
	}
	
	@RequestMapping("/cultureboardPro.do")
	public String writepro(CultureBoardDTO dto){
		sqlMapClient.insert("cultureBoard.insertcultureboard",dto);
		return "lectureboard.do";
	}
	
}
