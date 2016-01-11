package p_mypage;

import java.util.List;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import praiseboard.PraiseVO;
import p_mypage.p_pagingActions;


@Controller
public class P_praiseBean {
   
      @Autowired
      private SqlMapClientTemplate sqlMapClient;
      private List list;
      
      private int currentPage= 1;
      private int totalCount;
      private int blockCount = 10; // ���⸦ �����ϸ� ���������� ���ڵ� � ����Ұ����� ���ð���
      private int blockPage = 5;
      private String pagingHtml;
      private p_pagingActions page;

      

      @RequestMapping("/p_praiseboard.do")
      public ModelAndView listAction (PraiseVO dto, HttpServletRequest request, String PageNum, HttpSession session ){ 
    	  PageNum = request.getParameter("PageNum");
    	  
    	  System.out.println(PageNum);
    	  	if(PageNum == null){
    	  		currentPage =1;
    	  	}else{
    	  		currentPage = Integer.parseInt(PageNum);
    	  	}
         ModelAndView mv = new ModelAndView();
         totalCount = (Integer)sqlMapClient.queryForObject("praise.selectLastNoB" , dto);
         page = new p_pagingActions(currentPage,totalCount,blockCount,blockPage,blockCount);
         System.out.println(totalCount);
         dto.setId((String)session.getAttribute("memId"));
         int lastCount = totalCount;
         if(page.getEndCount() < totalCount){
             lastCount = page.getEndCount() +1;
         }
         List list = sqlMapClient.queryForList("praise.selectpraise",dto);
       /*  list = list.subList(page.getStartCount(), lastCount);*///���⸦ �����ϸ� �� list ���ڵ尡 ���� �Ѿ�� - �������� ��Ʈ��Ʈ���ҽ� �ڵ����� 10�������� �����ְ� 1,2,3 ����¡ó������
         		System.out.println(list.size());						//���� ���� ��Ʈ��Ʈ�� �Ⱦ��� ����¡ ó�� �ҷ��� ���⸦ ����ϸ�ȴ�. �̺κ��� ���ڵ带 10�� ������ �����ֱ⶧����.. ����?	
         														//������ ����¡ ��Ʈ ����̳� �������� ��θ� �ٲٷ��� pagingaction.java ���⸦ ��������. �׷� 20000
         pagingHtml = page.getPagingHtml().toString();
         
         mv.setViewName("/p_mypage/p_praiseboard.jsp");
         mv.addObject("totalCount",totalCount);
         mv.addObject("list",list);
         mv.addObject("pagingHtml",pagingHtml);
 
         
         
         return mv;
      }

}