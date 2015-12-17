package praiseboard;

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




@Controller
public class PraiseBoardBean {
	
		@Autowired
		private SqlMapClientTemplate sqlMapClient;
		private List list;
		
		private int currentPage= 1;
		private int totalCount;
		private int blockCount = 3;
		private int blockPage = 5;
		private String pagingHtml;
		private pagingAction page;

		

		@RequestMapping("/praiseboard.do")
		public String ModelAndView (PraiseVO dto, HttpServletRequest request, String pageNum){ 
		 
			
			ModelAndView mv = new ModelAndView();
			
			totalCount =(Integer)sqlMapClient.queryForObject("praise.selectLastNo",dto);
			System.out.println(totalCount);
			
			page = new pagingAction(currentPage,totalCount,blockCount,blockPage);
			int lastCount = totalCount;
		    if (page.getEndCount() < totalCount) {
		    	lastCount = page.getEndCount() + 1;
		    }
			List list = sqlMapClient.queryForList("praise.selectAll",dto);
			System.out.println(list.size());
			
			pagingHtml = page.getPagingHtml().toString();
			
			
			//list = list.subList(page.getStartCount(), lastCount);
			System.out.println(list.size());
			request.setAttribute("list", list);
			
			return "/praiseboard/praiseboard.jsp";
		}
		


	}
