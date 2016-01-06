package cultureBoard;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.CultureBoardDTO;
import admin.bean.LectureBoardDTO;

@Controller
public class CultureBoardWriteBean {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/cultureboardwrite.do")
	public String culturewrite(CultureBoardDTO dto, HttpServletRequest request){
		
		return "/cultureboard/cultureboardwrite.jsp";
	}
	
	@RequestMapping("/cultureboardwritePro.do")
	public String culturewritePro(CultureBoardDTO dto, HttpServletRequest request){
		
		sqlMapClient.insert("cultureBoard.insertcultureboard",dto);
		
		return "cultureboard.do";
	}
	
	@RequestMapping("/cultureboardcontent.do")
	public String VIEW(HttpServletRequest request, CultureBoardDTO dto){
		
		dto = (CultureBoardDTO)sqlMapClient.queryForObject("cultureBoard.selectOne", dto.getCuid());
		request.setAttribute("dto", dto);
		return "/cultureboard/cultureboardcontent.jsp";
	}
	
	@ModelAttribute("dto")
	public Object returnDTO(CultureBoardDTO dto){
		return sqlMapClient.queryForObject("cultureBoard.selectOne",dto.getCuid());
	}

}