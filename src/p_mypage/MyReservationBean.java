package p_mypage;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.AppointmentDTO;

@Controller
public class MyReservationBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@RequestMapping("/MyReservation.do")
	public String myreservationForm(AppointmentDTO dto, HttpServletRequest request,HttpSession session){
		
		dto.setId((String)session.getAttribute("memId"));
		List list=sqlMapClient.queryForList("appointment.selectAll", dto.getId());
	
		request.setAttribute("list", list);
		return "/mypage/MyReservation.jsp";
	}
	
}



/*- 세션 사용 방법 
현재 로그인 페이지에 세션이 생성이 되어있는 상태이다.

@RequestMapping("/loginPro.do")
public String formPro(LoginDataBean dto, HttpSession session){
	int check=(Integer)sqlMapClient.queryForObject("member.userCheck", dto)
	
	----> check에 member의 userCheck을 실행하여 int타입의 check에 넣는다.
     
     참고 userCheck 쿼리 
     select count(*) from member where id = #id# and passwd = #passwd#
	member에서 count id와 passwd , 결과가 1이면 아이디와 비번이 DB 에 있는것
	결과가 0이면 아이디와 비번이 DB에 없는것 즉 회원이 아니라는 뜻이다. 

if(check==1){   즉 위에서 check가 1이면 세션을 생성하겠다는 뜻이다. 
		session.setAttribute("memId", dto.getId());    
	}else if(check != 1){ 1이 아니면 로그인폼으로 다시 돌아가라는 뜻이다. 
		return "/loginForm.do";
	}
}
*/
/*다른곳에서 세션을 사용한다는 것은 로그인이 된것이 그 페이지에 연결된다는 뜻이며
LoginPro에 이미 세션이 생성되어있으므로 사용할 페이지에서 
session.getAttribute("memId")라고 선언하면 세션을 사용하는 것이된다. 
예를 들어서 
myreservation에서 사용한다고 가정하면 

@RequestMapping("myreservation.do)
public String myreservationForm(appointDTO dto, HttpSession session){

	dto.setId(String)session.getAttribute("memId")); //세션처리, 로그인한것이 이어짐.
	
	List list = sqlMapClient.queryForList("appointment.selectAll", dto.getId());
	//list에 sql의 selectAll 쿼리를 리스트로 가져와서 넣는다. 
	
	참고 appointment.selectAll
	<select id="selectAll" parameterClass="String" resultClass="appoint">
	select * from appointment where id=#id# order by aid desc
	</select> - appointment에서 id가 id일때 검색 aid 오름차순으로 
	즉 id가 id일때 모든 레코드를 검색하여 List로 가져오겠다는 뜻임. 
	
request.setAttribute("list", list);
return "/mypage/myreservation.jsp/"
}
*/

