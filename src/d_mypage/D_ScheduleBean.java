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
	     private int blockCount = 10; // ���⸦ �����ϸ� ���������� ���ڵ� � ����Ұ����� ���ð���
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
	        
	        	list = list.subList(page.getStartCount(), lastCount);//���⸦ �����ϸ� �� list ���ڵ尡 ���� �Ѿ�� - �������� ��Ʈ��Ʈ���ҽ� �ڵ����� 10�������� �����ְ� 1,2,3 ����¡ó������
	        														//���� ���� ��Ʈ��Ʈ�� �Ⱦ��� ����¡ ó�� �ҷ��� ���⸦ ����ϸ�ȴ�. �̺κ��� ���ڵ带 10�� ������ �����ֱ⶧����.. ����?	
	        														//������ ����¡ ��Ʈ ����̳� �������� ��θ� �ٲٷ��� pagingaction.java ���⸦ ��������. �׷� 20000
	        
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
