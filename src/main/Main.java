package main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.DepartmentDTO;
import admin.bean.DoctorDTO;
import praiseboard.pagingAction;

@Controller
public class Main {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	List list = null;
	private int currentPage= 1;
    private int totalCount;
    private int blockCount = 3; // ���⸦ �����ϸ� ���������� ���ڵ� � ����Ұ����� ���ð���
    private int blockPage = 5;
    private String pagingHtml;
    private paigingActiondb page;
    //����������
	@RequestMapping("/dbmain.do")
	public String bdmain(HttpServletRequest request){
	
	return "/treatmentteam/treatmentteamtop.jsp";
}
	//������������ ���� 
	@RequestMapping("/adminmain.do")
	public String adminmain(HttpServletRequest request,DoctorDTO dto, DepartmentDTO depart,String PageNum ){
		
	
      
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
}
	