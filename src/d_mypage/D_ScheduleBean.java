package d_mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.ScheduleDTO;
import admin.bean.TreatmentteamDTO;
import login.bean.LoginDataBean;
import praiseboard.pagingAction;

@Controller
public class D_ScheduleBean {

	@Autowired
	private SqlMapClientTemplate sqlMapclient;
	   private int currentPage= 1;
	     private int totalCount;
	     private int blockCount = 10; // 여기를 조절하면 한페이지당 레코드 몇개 출력할것인지 선택가능
	     private int blockPage = 5;
	     private String pagingHtml;
	     private pagingActions page;
	
	@RequestMapping("scheduleform.do")
	public String scheduleform (HttpServletRequest request,TreatmentteamDTO tdto ,ScheduleDTO dto, String PageNum, String joungbok){
		PageNum = request.getParameter("PageNum");
	   	 int drid = Integer.parseInt(request.getParameter("drid"));
	   	dto.setDrid(drid);
	   	

	   	  	if(PageNum == null){
	   	  		currentPage =1;
	   	  		PageNum = "1";
	   	  	}else{
	   	  		currentPage = Integer.parseInt(PageNum);
	   	  	}
	      
	        totalCount = (Integer)sqlMapclient.queryForObject("schedule.selectLastNo" , dto);
	        page = new pagingActions(currentPage,totalCount,blockCount,blockPage,drid);
	        
	        System.out.println(totalCount);
	        
	        int lastCount = totalCount;
	        if(page.getEndCount() < totalCount){
	            lastCount = page.getEndCount() +1;
	        }
	        List list = sqlMapclient.queryForList("schedule.drschedulecheck",dto.getDrid());
	        System.out.println(list.size());
	        if(list.size() != 0) {
	        
	        	list = list.subList(page.getStartCount(), lastCount);//여기를 생략하면 총 list 레코드가 전부 넘어간다 - 내가받은 부트스트랩소스 자동으로 10개단위로 끊어주고 1,2,3 페이징처리해줌
	        														//내가 받은 부트스트랩 안쓰고 페이징 처리 할려면 여기를 사용하면된다. 이부분이 레코드를 10개 단위로 끊어주기때문에.. ㅇㅋ?	
	        														//나머지 페이징 폰트 모양이나 페이지넘 경로를 바꾸려면 pagingaction.java 여기를 만지도록. 그럼 20000
	        
	        }
	        
	        System.out.println(list.size());
	        pagingHtml = page.getPagingHtml().toString();
	        
	      
	        System.out.println(PageNum);
	    tdto = (TreatmentteamDTO) sqlMapclient.queryForObject("treatment.doctorprofile",tdto.getDrid());
	    request.setAttribute("totalCount",totalCount);
	    request.setAttribute("pagingHtml",pagingHtml);
	    request.setAttribute("PageNum",PageNum);
		request.setAttribute("list", list);
		request.setAttribute("tdto", tdto);
		return "/d_mypage/d_schedule.jsp";
	}
}
