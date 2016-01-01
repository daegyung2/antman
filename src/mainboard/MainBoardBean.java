package mainboard;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.MainBoardDTO;

@Controller
public class MainBoardBean {
	
		@Autowired
		private SqlMapClientTemplate sqlMapClient;
		private List list;
	
		private int currentPage= 1;
		private int totalCount;
		private int blockCount = 10;
		private int blockPage = 5;
		private String pagingHtml;
		private pagingAction page;
	

		

		@RequestMapping("/mainboard.do")
		public String listAction (MainBoardDTO dto, HttpServletRequest request, String pageNum){ 
		 
			
			list = sqlMapClient.queryForList("mainBoard.selectAll",dto);
			System.out.println(list.size());
			
			
			page = new pagingAction(currentPage,totalCount,blockCount,blockPage);
			pagingHtml = page.getPagingHtml().toString();
			
			int lastCount = totalCount;
			
			if(page.getEndCount() < totalCount)
				lastCount = page.getEndCount() +1;
			
			//list = list.subList(page.getStartCount(), lastCount);
			
			//request.setAttribute("list", list);
			
			return "/intro/mainboard/mainboard.jsp";
		}
		
		@ModelAttribute("list")
		public List test(MainBoardDTO dto) {
			return sqlMapClient.queryForList("mainBoard.selectAll",dto);
			
		}


	}
