package academy;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.AcademyDTO;
import praiseboard.PraiseVO;
import praiseboard.pagingAction;

@Controller
public class AcademyListBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
    private int currentPage= 1;
    private int totalCount;
    private int blockCount = 10; // 여기를 조절하면 한페이지당 레코드 몇개 출력할것인지 선택가능
    private int blockPage = 5;
    private String pagingHtml;
    private pagingActionaca page;

	private String view;
	
	@RequestMapping("/academylist.do")
	public String list(HttpServletRequest request, String PageNum , AcademyDTO dto,String drname ){
  	  PageNum = request.getParameter("PageNum");
  	 System.out.println(dto.getId());
  	int asid =(int)dto.getAsid();
  
  	  	if(PageNum == null){
  	  		currentPage =1;
  	  	}else{
  	  		currentPage = Integer.parseInt(PageNum);
  	  	}
       ModelAndView mv = new ModelAndView();
       totalCount = (Integer)sqlMapClient.queryForObject("academy.selectLastNo" , dto);
       page = new pagingActionaca(currentPage,totalCount,blockCount,blockPage);
       
       
       int lastCount = totalCount;
       if(page.getEndCount() < totalCount){
           lastCount = page.getEndCount() +1;
       }
       List list = sqlMapClient.queryForList("academy.selectAll",dto);
       list = list.subList(page.getStartCount(), lastCount);
     
       pagingHtml = page.getPagingHtml().toString();
       	
       int check = (int)sqlMapClient.queryForObject("academy.idcheck",dto);
       System.out.println(check);

      request.setAttribute("totalCount",totalCount);
      request.setAttribute("list",list);
      request.setAttribute("check",check);
      request.setAttribute("pagingHtml",pagingHtml);
      request.setAttribute("view",view);
      request.setAttribute("2drname",drname);       
       
       
       

       return "/academy/academylist.jsp";
	
	}
	
	
}
