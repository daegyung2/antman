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
      private int blockCount = 10; // ���⸦ �����ϸ� ���������� ���ڵ� � ����Ұ����� ���ð���
      private int blockPage = 5;
      private String pagingHtml;
      private pagingAction page;

      

      @RequestMapping("/praiseboard.do")
      public ModelAndView listAction (PraiseVO dto, HttpServletRequest request, String PageNum ){ 
    	  PageNum = request.getParameter("PageNum");
    	  
    	  System.out.println(PageNum);
    	  	if(PageNum == null){
    	  		currentPage =1;
    	  	}else{
    	  		currentPage = Integer.parseInt(PageNum);
    	  	}
         ModelAndView mv = new ModelAndView();
         totalCount = (Integer)sqlMapClient.queryForObject("praise.selectLastNo" , dto);
         page = new pagingAction(currentPage,totalCount,blockCount,blockPage);
         System.out.println(totalCount);
         
         int lastCount = totalCount;
         if(page.getEndCount() < totalCount){
             lastCount = page.getEndCount() +1;
         }
         List list = sqlMapClient.queryForList("praise.selectpraise",dto);
       /*  list = list.subList(page.getStartCount(), lastCount);*///���⸦ �����ϸ� �� list ���ڵ尡 ���� �Ѿ�� - �������� ��Ʈ��Ʈ���ҽ� �ڵ����� 10�������� �����ְ� 1,2,3 ����¡ó������
         		System.out.println(list.size());						//���� ���� ��Ʈ��Ʈ�� �Ⱦ��� ����¡ ó�� �ҷ��� ���⸦ ����ϸ�ȴ�. �̺κ��� ���ڵ带 10�� ������ �����ֱ⶧����.. ����?	
         														//������ ����¡ ��Ʈ ����̳� �������� ��θ� �ٲٷ��� pagingaction.java ���⸦ ��������. �׷� 20000
         pagingHtml = page.getPagingHtml().toString();
         
         mv.setViewName("/praiseboard/praiseboard.jsp");
         mv.addObject("totalCount",totalCount);
         mv.addObject("list",list);
         mv.addObject("pagingHtml",pagingHtml);
 
         
         
         
         

         return mv;
      }



   }