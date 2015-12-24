package intro;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lectureBoard.LectureBoardDTO;
import admin.bean.MainBoardDTO;
import mainboard.pagingAction;
import newsBoard.NewsBoardDTO;

@Controller
public class IntroBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List list;
	
	private int currentPage= 1;
	private int totalCount;
	private int totalCounta;
	private int totalCountb;
	private int blockCount = 5;
	private int blockPage = 5;
	private String pagingHtml;
	private pagingAction page;
	
	@RequestMapping("/intro.do")
	public String intro(HttpServletRequest request, MainBoardDTO dto, NewsBoardDTO dtoa, LectureBoardDTO dtob ){
	
			
			
			totalCount =(Integer)sqlMapClient.queryForObject("mainBoard.selectLastNo",dto);
			page = new pagingAction(currentPage,totalCount,blockCount,blockPage);
			int lastCount = totalCount;
		    if (page.getEndCount() < totalCount) {
		    	lastCount = page.getEndCount() + 1;
		    }
		    
		    totalCounta =(Integer)sqlMapClient.queryForObject("newsBoard.selectLastNo",dtoa);
			page = new pagingAction(currentPage,totalCounta,blockCount,blockPage);
			int lastCounta = totalCounta;
		    if (page.getEndCount() < totalCounta) {
		    	lastCounta = page.getEndCount() + 1;
		    }
		    
		    totalCountb =(Integer)sqlMapClient.queryForObject("lectureBoard.selectLastNo",dtob);
			page = new pagingAction(currentPage,totalCountb,blockCount,blockPage);
			int lastCountb = totalCountb;
		    if (page.getEndCount() < totalCountb) {
		    	lastCountb = page.getEndCount() + 1;
		    }
		
		    
		    
		    
		    List list = sqlMapClient.queryForList("mainBoard.selectAll",dto);
			pagingHtml = page.getPagingHtml().toString();
			list = list.subList(page.getStartCount(), lastCount);
		
			
			List lista = sqlMapClient.queryForList("newsBoard.selectAll",dtoa);
			lista = lista.subList(page.getStartCount(), lastCounta);
			
			List listb = sqlMapClient.queryForList("lectureBoard.selectAll", dtob);
			listb = listb.subList(page.getStartCount(), lastCountb);
		
			request.setAttribute("list", list);
			request.setAttribute("lista", lista);
			request.setAttribute("listb", listb);
		
		return "/intro/intro.jsp";
	}
	
	
}


