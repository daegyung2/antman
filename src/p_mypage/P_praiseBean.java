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
      private int blockCount = 10; // 여기를 조절하면 한페이지당 레코드 몇개 출력할것인지 선택가능
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
        //리다이렉트로 값이 안넘어가질때 이렇게 dto에 아이디를 셋 시키면 됨....
         dto.setId((String)session.getAttribute("memId"));
         int lastCount = totalCount;
         if(page.getEndCount() < totalCount){
             lastCount = page.getEndCount() +1;
         }
         List list = sqlMapClient.queryForList("praise.selectpraise",dto);
       /*  list = list.subList(page.getStartCount(), lastCount);*///여기를 생략하면 총 list 레코드가 전부 넘어간다 - 내가받은 부트스트랩소스 자동으로 10개단위로 끊어주고 1,2,3 페이징처리해줌
         		System.out.println(list.size());						//내가 받은 부트스트랩 안쓰고 페이징 처리 할려면 여기를 사용하면된다. 이부분이 레코드를 10개 단위로 끊어주기때문에.. ㅇㅋ?	
         														//나머지 페이징 폰트 모양이나 페이지넘 경로를 바꾸려면 pagingaction.java 여기를 만지도록. 그럼 20000
         pagingHtml = page.getPagingHtml().toString();
         
         mv.setViewName("/p_mypage/p_praiseboard.jsp");
         mv.addObject("totalCount",totalCount);
         mv.addObject("list",list);
         mv.addObject("pagingHtml",pagingHtml);
 
         
         
         return mv;
      }

}