package d_mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.AcademyDTO;
import admin.bean.ScheduleDTO;
import admin.bean.ScheduleResultDTO;
import praiseboard.PraiseVO;
@Controller
public class D_ResultInfoBean {

		@Autowired
		private SqlMapClientTemplate sqlMapClient;
	
	
		@RequestMapping("/dresultinfo.do")
		public String list(ScheduleDTO sdto, HttpServletRequest request,PraiseVO pdto,ScheduleResultDTO rdto){
	
			int allcount = (int)sqlMapClient.queryForObject("result.resultcountdr",rdto);
			List rlist = sqlMapClient.queryForList("result.resultlistdr",rdto);
			List dplist = sqlMapClient.queryForList("praise.selectdepart",pdto);
			List drlist = sqlMapClient.queryForList("praise.selectdoctor",pdto.getDpname());
			request.setAttribute("dplist",dplist);
			request.setAttribute("drlist", drlist);
			request.setAttribute("rlist", rlist);
			request.setAttribute("allcount", allcount);
	
		
	
	return "/d_mypage/d_resultinfo.jsp";
	
}
}