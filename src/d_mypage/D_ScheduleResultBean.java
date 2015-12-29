	package d_mypage;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.orm.ibatis.SqlMapClientTemplate;
	import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.RequestMapping;

	@Controller
	public class D_ScheduleResultBean {



		@Autowired
		private SqlMapClientTemplate sqlMapclient;
		
		@RequestMapping("dscheduleform.do")
		public String D_Scheduleform (){
			
			return "/d_mypage/d_resultpage.jsp";
		}
	}

