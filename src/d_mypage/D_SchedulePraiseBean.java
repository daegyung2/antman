package d_mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import praiseboard.PraiseVO;
import praiseboard.pagingAction;
@Controller
public class D_SchedulePraiseBean {

	 @Autowired
     private SqlMapClientTemplate sqlMapClient;
     private List list;
     
     private int currentPage= 1;
     private int totalCount;
     private int blockCount = 10; // ���⸦ �����ϸ� ���������� ���ڵ� � ����Ұ����� ���ð���
     private int blockPage = 5;
     private String pagingHtml;
     private pagingActions page;

     

     @RequestMapping("/dpraiseboard.do")
     public ModelAndView listAction (PraiseVO dto, HttpServletRequest request, String PageNum ){ 
   	  PageNum = request.getParameter("PageNum");
   	  int drid = Integer.parseInt(request.getParameter("drid"));
   	String drname = (String)request.getParameter("drname");
   	dto.setDrname(drname);
   	  
   	  	if(PageNum == null){
   	  		currentPage =1;
   	  	}else{
   	  		currentPage = Integer.parseInt(PageNum);
   	  	}
        ModelAndView mv = new ModelAndView();
        totalCount = (Integer)sqlMapClient.queryForObject("praise.selectLastNodr" , dto);
        page = new pagingActions(currentPage,totalCount,blockCount,blockPage,drid);
        
        
        int lastCount = totalCount;
        if(page.getEndCount() < totalCount){
            lastCount = page.getEndCount() +1;
        }
        List list = sqlMapClient.queryForList("praise.selectdr",dto);
        list = list.subList(page.getStartCount(), lastCount);//���⸦ �����ϸ� �� list ���ڵ尡 ���� �Ѿ�� - �������� ��Ʈ��Ʈ���ҽ� �ڵ����� 10�������� �����ְ� 1,2,3 ����¡ó������
        														//���� ���� ��Ʈ��Ʈ�� �Ⱦ��� ����¡ ó�� �ҷ��� ���⸦ ����ϸ�ȴ�. �̺κ��� ���ڵ带 10�� ������ �����ֱ⶧����.. ����?	
        														//������ ����¡ ��Ʈ ����̳� �������� ��θ� �ٲٷ��� pagingaction.java ���⸦ ��������. �׷� 20000
        System.out.println(list.size());
        pagingHtml = page.getPagingHtml().toString();
        
        mv.setViewName("/d_mypage/d_praisepage.jsp");
        mv.addObject("totalCount",totalCount);
        mv.addObject("list",list);
        mv.addObject("pagingHtml",pagingHtml);

        
        
        
        

        return mv;
     }
}
