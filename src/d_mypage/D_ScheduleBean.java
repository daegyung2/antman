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
	     private List list;
	@RequestMapping("scheduleform.do")
	public String scheduleform (HttpServletRequest request,TreatmentteamDTO tdto ,ScheduleDTO dto, String PageNum, String joungbok){
		PageNum = request.getParameter("PageNum");
	   	 int drid = Integer.parseInt(request.getParameter("drid"));
	   	dto.setDrid(drid);
	   	int lastCount;
	   	String year;
	   	String month;
	   	String day;
	   	

	    if (dto.getYear() == null && dto.getMonth() == null && dto.getDay() == null){
		  	if(PageNum == null){
	   	  		currentPage =1;
	   	  		PageNum = "1";
	   	  	}else{
	   	  		currentPage = Integer.parseInt(PageNum);
	   	  	}
	      
	        totalCount = (Integer)sqlMapclient.queryForObject("schedule.selectLastNo" , dto);
	        page = new pagingActions(currentPage,totalCount,blockCount,blockPage,drid);
	        
	     
	        
	        lastCount = totalCount;
	        if(page.getEndCount() < totalCount){
	            lastCount = page.getEndCount() +1;
	        }
	        list = sqlMapclient.queryForList("schedule.drschedulecheck",dto.getDrid());
	        System.out.println(list.size());
	        if(list.size() != 0) {
	        
	        	list = list.subList(page.getStartCount(), lastCount);//���⸦ �����ϸ� �� list ���ڵ尡 ���� �Ѿ�� - �������� ��Ʈ��Ʈ���ҽ� �ڵ����� 10�������� �����ְ� 1,2,3 ����¡ó������
	        }														//���� ���� ��Ʈ��Ʈ�� �Ⱦ��� ����¡ ó�� �ҷ��� ���⸦ ����ϸ�ȴ�. �̺κ��� ���ڵ带 10�� ������ �����ֱ⶧����.. ����?	
	        														//������ ����¡ ��Ʈ ����̳� �������� ��θ� �ٲٷ��� pagingaction.java ���⸦ ��������. �׷� 20000
        pagingHtml = page.getPagingHtml().toString();
	        

	    tdto = (TreatmentteamDTO) sqlMapclient.queryForObject("treatment.doctorprofile",tdto.getDrid());
	    request.setAttribute("totalCount",totalCount);
	    request.setAttribute("pagingHtml",pagingHtml);
	    request.setAttribute("PageNum",PageNum);
		request.setAttribute("list", list);
		request.setAttribute("tdto", tdto);
		return "/d_mypage/d_schedule.jsp";
		
		}

	   	else if(dto.getYear() != null && dto.getMonth() != null && dto.getDay().equals("no")){
		
		year = dto.getYear();
		month =dto.getMonth();
		
		dto.setSdate(year+"-"+month);
	
	  	if(PageNum == null){
	  		currentPage =1;
	  		PageNum = "1";
	  	}else{
	  		currentPage = Integer.parseInt(PageNum);
	  	}
  
    totalCount = (Integer)sqlMapclient.queryForObject("schedule.selectLastNom" , dto);
    page = new pagingActions(currentPage,totalCount,blockCount,blockPage,drid);
  
    
    lastCount = totalCount;
    if(page.getEndCount() < totalCount){
        lastCount = page.getEndCount() +1;
    }
    List list = sqlMapclient.queryForList("schedule.drschedulecheckm",dto);
  
    if(list.size() != 0) {
    
    	list = list.subList(page.getStartCount(), lastCount);
    }
    pagingHtml = page.getPagingHtml().toString();
    	tdto = (TreatmentteamDTO) sqlMapclient.queryForObject("treatment.doctorprofile",tdto.getDrid());
	    request.setAttribute("totalCount",totalCount);
	    request.setAttribute("pagingHtml",pagingHtml);
	    request.setAttribute("PageNum",PageNum);
		request.setAttribute("list", list);
		request.setAttribute("tdto", tdto);
		return "/d_mypage/d_schedule.jsp";
	
}


else if(dto.getYear() != null && dto.getMonth() != null && dto.getDay() != null){
	year = dto.getYear();
	month =dto.getMonth();
	day = dto.getDay();
	dto.setSdate(year+"-"+month+"-"+day);
	System.out.println(dto.getYear());
	System.out.println(dto.getMonth());
	System.out.println(dto.getDay());
	
	System.out.println(dto.getDrid());
	System.out.println(dto.getSdate());
	if(PageNum == null){
	  		currentPage =1;
	  		PageNum = "1";
	  	}else{
	  		currentPage = Integer.parseInt(PageNum);
	  	}
  
    totalCount = (Integer)sqlMapclient.queryForObject("schedule.selectLastNod" , dto);
    page = new pagingActions(currentPage,totalCount,blockCount,blockPage,drid);
  
    lastCount = totalCount;
    if(page.getEndCount() < totalCount){
        lastCount = page.getEndCount() +1;
    }
    list = sqlMapclient.queryForList("schedule.drschedulecheckd",dto);
    System.out.println(list.size());
    if(list.size() != 0) {
    
    	list = list.subList(page.getStartCount(), lastCount);//���⸦ �����ϸ� �� list ���ڵ尡 ���� �Ѿ�� - �������� ��Ʈ��Ʈ���ҽ� �ڵ����� 10�������� �����ְ� 1,2,3 ����¡ó������
    }														//���� ���� ��Ʈ��Ʈ�� �Ⱦ��� ����¡ ó�� �ҷ��� ���⸦ ����ϸ�ȴ�. �̺κ��� ���ڵ带 10�� ������ �����ֱ⶧����.. ����?	
    														//������ ����¡ ��Ʈ ����̳� �������� ��θ� �ٲٷ��� pagingaction.java ���⸦ ��������. �׷� 20000
pagingHtml = page.getPagingHtml().toString();
    
tdto = (TreatmentteamDTO) sqlMapclient.queryForObject("treatment.doctorprofile",tdto.getDrid());
request.setAttribute("totalCount",totalCount);
request.setAttribute("pagingHtml",pagingHtml);
request.setAttribute("PageNum",PageNum);
request.setAttribute("list", list);
request.setAttribute("tdto", tdto);

return "/d_mypage/d_schedule.jsp";



	}else{}
	    
	
	    
		return "/d_mypage/d_schedule.jsp";
}
}
