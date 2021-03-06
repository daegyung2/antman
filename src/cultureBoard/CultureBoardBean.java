package cultureBoard;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.CultureBoardDTO;

@Controller
public class CultureBoardBean {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List list;
	
	@RequestMapping("/cultureboard.do")
	public String cultureboard(CultureBoardDTO dto,HttpServletRequest request){
		list = sqlMapClient.queryForList("cultureBoard.selectAll",dto);
		
		request.setAttribute("list",list);
		
		return "/cultureboard/cultureboard.jsp";
	}

	
}
