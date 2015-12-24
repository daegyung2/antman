package admin.body_part;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.Body_partDTO;


@Controller
public class Body_partListBean {
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	private List list;
	
	private int currentPage= 1;
    private int totalCount;
    private int blockCount = 5; // 여기를 조절하면 한페이지당 레코드 몇개 출력할것인지 선택가능
    private int blockPage = 5;
    private String pagingHtml;
    private pagingAction page;


	@RequestMapping("/body_partList.do")
	public ModelAndView bodyList(Body_partDTO dto,HttpServletRequest request, String PageNum){
		PageNum = request.getParameter("pageNum");
		if(PageNum == null){
	  		currentPage =1;
	  	}else{
	  		currentPage = Integer.parseInt(PageNum);
	  	}
		ModelAndView mv = new ModelAndView();
		totalCount = (int) sqlMapClient.queryForObject("body.count",dto);
		page = new pagingAction(currentPage,totalCount,blockCount,blockPage);
		
		int lastCount = totalCount;
        if(page.getEndCount() < totalCount){
            lastCount = page.getEndCount() +1;
        }
        
		list = sqlMapClient.queryForList("body.selectList",dto);
		list = list.subList(page.getStartCount(), lastCount);
		
         pagingHtml = page.getPagingHtml().toString();
         
         mv.setViewName("/admin/body_part/body_partList.jsp");
         mv.addObject("totalCount",totalCount);
         mv.addObject("list",list);
         mv.addObject("pagingHtml",pagingHtml);
		return mv;
	}
	
	
}
