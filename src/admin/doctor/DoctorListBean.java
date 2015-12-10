package admin.doctor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DoctorDTO;
import praiseboard.pagingAction;

@Controller
public class DoctorListBean {
   @Autowired
   private List doctorList;
   private SqlMapClientTemplate sqlMapClient;
   private pagingAction page;
   private int currentPage;
   private int totalCount;
   private int blockCount;
   private int blockPage;
   private String pagingHtml;
   
   @RequestMapping("/doctorList.do")
   public String doctorList(HttpServletRequest request, DoctorDTO dto ){
	   doctorList = sqlMapClient.queryForList("doctor.getList", dto);

		
		page = new pagingAction(currentPage,totalCount,blockCount,blockPage);
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		
		if(page.getEndCount() < totalCount)
			lastCount = page.getEndCount() +1;
	   return "/admin/doctor/doctorList.jsp";
   }
   
   @ModelAttribute("list")
   public List getList(DoctorDTO dto){
	   
	   return sqlMapClient.queryForList("doctor.getList", dto);
   }
}
