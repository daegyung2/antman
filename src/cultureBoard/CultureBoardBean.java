package cultureBoard;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.CultureBoardDTO;
import lectureBoard.pagingAction;

@Controller
public class CultureBoardBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List list;
	private int currentPage= 1;
	private int totalCount;
	private int blockCount = 10;
	private int blockPage = 5;
	private String pagingHtml;
	private pagingAction page;
	
	@RequestMapping("/cultureboard.do")
	public String Cultureboard(CultureBoardDTO dto,HttpServletRequest request){
	
		list = sqlMapClient.queryForList("cultureBoard.selectALL",dto);
		page = new pagingAction(currentPage,totalCount,blockCount,blockPage);
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		
		if(page.getEndCount() < totalCount)
			lastCount = page.getEndCount() +1;
		
		//list = list.subList(page.getStartCount(), lastCount);
		System.out.println(list.size());
		request.setAttribute("list", list);
		
		return "/cultureboard/cultureboard.jsp";
	}
	
}
