package newsBoard;



import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.AppointmentDTO;
import admin.bean.NewsBoardDTO;

@Controller
public class NewsBoardBean {
	
		@Autowired
		private SqlMapClientTemplate sqlMapClient;
		private List list;
		private List alist;
		private int currentPage= 1;
		private int totalCount;
		private int blockCount = 3;
		private int blockPage = 5;
		private String pagingHtml;
		private pagingAction page;

		

		@RequestMapping("/newsboard.do")
		public String listAction (NewsBoardDTO dto, AppointmentDTO dtoa, HttpServletRequest request, String pageNum, HttpSession session){ 
		    session.getAttribute("memId");
		  
			dtoa.setId((String)session.getAttribute("memId"));
			
			alist=sqlMapClient.queryForList("appointment.selectAll", dtoa.getId());
		
			request.setAttribute("list", list);
		 
			list = sqlMapClient.queryForList("newsBoard.selectAll",dto);
			
			page = new pagingAction(currentPage,totalCount,blockCount,blockPage);
			pagingHtml = page.getPagingHtml().toString();
			
			int lastCount = totalCount;
			
			if(page.getEndCount() < totalCount)
				lastCount = page.getEndCount() +1;
			
			//list = list.subList(page.getStartCount(), lastCount);
			
			//request.setAttribute("list", list);
			
			
			return "/intro/newsboard/newsboard.jsp";
		}
		
		@ModelAttribute("list")
		public List test(NewsBoardDTO dto) {
			return sqlMapClient.queryForList("newsBoard.selectAll",dto);
			
		}
		
		@ModelAttribute("alist")
		public List alist(AppointmentDTO dtoa){
			return sqlMapClient.queryForList("appointment.selectAll", dtoa.getId());
		}


	}
