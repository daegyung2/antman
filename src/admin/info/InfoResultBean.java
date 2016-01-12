package admin.info;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.ScheduleDTO;
import admin.bean.ScheduleResultDTO;
import praiseboard.PraiseVO;

@Controller
public class InfoResultBean {

	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	List drlist;
	@RequestMapping("/resultinfo.do")
	public String result(ScheduleDTO sdto, HttpServletRequest request,PraiseVO pdto,ScheduleResultDTO rdto){
System.out.print(rdto.getDpname());
		
		if(rdto.getDpname() != null && rdto.getDrid() == 0){
			int allcount = (int)sqlMapClient.queryForObject("result.resultcountdp",rdto);
			
			List rlist = sqlMapClient.queryForList("result.resultlistdp",rdto);
			List dplist = sqlMapClient.queryForList("praise.selectdepart",pdto);
			List drlist = sqlMapClient.queryForList("praise.selectdoctor",pdto.getDpname());
			request.setAttribute("dplist",dplist);
			request.setAttribute("drlist", drlist);
			request.setAttribute("rlist", rlist);
			request.setAttribute("allcount", allcount);
			return "/admin/info/resultinfo.jsp";
		}else if(pdto.getDrid() != 0){
			int allcount = (int)sqlMapClient.queryForObject("result.resultcountdr",rdto);
			List rlist = sqlMapClient.queryForList("result.resultlistdr",rdto);
			List dplist = sqlMapClient.queryForList("praise.selectdepart",pdto);
			List drlist = sqlMapClient.queryForList("praise.selectdoctor",pdto.getDpname());
			request.setAttribute("dplist",dplist);
			request.setAttribute("drlist", drlist);
			request.setAttribute("rlist", rlist);
			request.setAttribute("allcount", allcount);
			return "/admin/info/resultinfo.jsp";
		
		
		}
		
		
		List dplist = sqlMapClient.queryForList("praise.selectdepart",pdto);
		List drlist = sqlMapClient.queryForList("praise.selectdoctor",pdto.getDpname());
		
		
		int allcount = (int)sqlMapClient.queryForObject("result.resultcount",rdto);
		List rlist = sqlMapClient.queryForList("result.resultlist",rdto);
		request.setAttribute("dplist",dplist);
		request.setAttribute("drlist", drlist);
		request.setAttribute("rlist", rlist);
		request.setAttribute("allcount", allcount);
		return "/admin/info/resultinfo.jsp";
}
}
