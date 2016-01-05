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
     private int blockCount = 10; // 여기를 조절하면 한페이지당 레코드 몇개 출력할것인지 선택가능
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
        list = list.subList(page.getStartCount(), lastCount);//여기를 생략하면 총 list 레코드가 전부 넘어간다 - 내가받은 부트스트랩소스 자동으로 10개단위로 끊어주고 1,2,3 페이징처리해줌
        														//내가 받은 부트스트랩 안쓰고 페이징 처리 할려면 여기를 사용하면된다. 이부분이 레코드를 10개 단위로 끊어주기때문에.. ㅇㅋ?	
        														//나머지 페이징 폰트 모양이나 페이지넘 경로를 바꾸려면 pagingaction.java 여기를 만지도록. 그럼 20000
        System.out.println(list.size());
        pagingHtml = page.getPagingHtml().toString();
        
        mv.setViewName("/d_mypage/d_praisepage.jsp");
        mv.addObject("totalCount",totalCount);
        mv.addObject("list",list);
        mv.addObject("pagingHtml",pagingHtml);

        
        
        
        

        return mv;
     }
}
