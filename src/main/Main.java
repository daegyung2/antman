package main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.AcademyDTO;
import admin.bean.DepartmentDTO;
import admin.bean.DoctorDTO;
import admin.bean.LectureBoardDTO;
import admin.bean.MainBoardDTO;
import admin.bean.NewsBoardDTO;
import praiseboard.pagingAction;

@Controller
public class Main {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	List list = null;
	private int currentPage= 1;
    private int totalCount;
    private int blockCount = 3; // 여기를 조절하면 한페이지당 레코드 몇개 출력할것인지 선택가능
    private int blockPage = 5;
    private String pagingHtml;
    private paigingActiondb page;
    //메인페이지
	@RequestMapping("/main.do")
	public String bdmain(HttpServletRequest request, NewsBoardDTO dto, MainBoardDTO dtoA, LectureBoardDTO dtoB,
			AcademyDTO dtoC){
	
		List list = sqlMapClient.queryForList("newsBoard.selectAll", dto);
		List listA = sqlMapClient.queryForList("mainBoard.selectAll", dtoA);
		List listB = sqlMapClient.queryForList("lectureBoard.selectAll", dtoB);
		List listC = sqlMapClient.queryForList("academy.selectAll", dtoC);
		
	
		request.setAttribute("list", list);
		request.setAttribute("listA", listA);
		request.setAttribute("listB", listB);
		request.setAttribute("listC", listC);
		System.out.println(listC.size());
		
	return "/mainpage/main.jsp";
}
	

	//관리자페이지 메인 
	@RequestMapping("/adminmain.do")
	public String adminmain(HttpServletRequest request,DoctorDTO dto, DepartmentDTO depart,String PageNum ){
		
	
      //
        List list = sqlMapClient.queryForList("doctor.selectList",dto);
        List elist = sqlMapClient.queryForList("employee.selectList",dto);
        List dlist = sqlMapClient.queryForList("depart.selectList",dto);
        List plist = sqlMapClient.queryForList("p_depart.selectList",dto);
        request.setAttribute("list",list);
        request.setAttribute("elist",elist);
        request.setAttribute("dlist",dlist);
        request.setAttribute("plist",plist);   
        
		   return "/admin/adminmain.jsp";
	}
	
	@RequestMapping("/mainroad.do")
	public String mainroad(){
		
		return "/mainpage/road.jsp";
		
	}
	
	@RequestMapping("/sitemap.do")
	public String sitemap(){
		
		return "/mainpage/sitemap.jsp";
		
	}
	
	@RequestMapping("/notready.do")
	public String notready(){
		
		return "/mainpage/notready.jsp";
		
	}
	
}
	