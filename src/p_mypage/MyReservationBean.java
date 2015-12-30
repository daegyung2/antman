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



/*- ���� ��� ��� 
���� �α��� �������� ������ ������ �Ǿ��ִ� �����̴�.

@RequestMapping("/loginPro.do")
public String formPro(LoginDataBean dto, HttpSession session){
	int check=(Integer)sqlMapClient.queryForObject("member.userCheck", dto)
	
	----> check�� member�� userCheck�� �����Ͽ� intŸ���� check�� �ִ´�.
     
     ���� userCheck ���� 
     select count(*) from member where id = #id# and passwd = #passwd#
	member���� count id�� passwd , ����� 1�̸� ���̵�� ����� DB �� �ִ°�
	����� 0�̸� ���̵�� ����� DB�� ���°� �� ȸ���� �ƴ϶�� ���̴�. 

if(check==1){   �� ������ check�� 1�̸� ������ �����ϰڴٴ� ���̴�. 
		session.setAttribute("memId", dto.getId());    
	}else if(check != 1){ 1�� �ƴϸ� �α��������� �ٽ� ���ư���� ���̴�. 
		return "/loginForm.do";
	}
}
*/
/*�ٸ������� ������ ����Ѵٴ� ���� �α����� �Ȱ��� �� �������� ����ȴٴ� ���̸�
LoginPro�� �̹� ������ �����Ǿ������Ƿ� ����� ���������� 
session.getAttribute("memId")��� �����ϸ� ������ ����ϴ� ���̵ȴ�. 
���� �� 
myreservation���� ����Ѵٰ� �����ϸ� 

@RequestMapping("myreservation.do)
public String myreservationForm(appointDTO dto, HttpSession session){

	dto.setId(String)session.getAttribute("memId")); //����ó��, �α����Ѱ��� �̾���.
	
	List list = sqlMapClient.queryForList("appointment.selectAll", dto.getId());
	//list�� sql�� selectAll ������ ����Ʈ�� �����ͼ� �ִ´�. 
	
	���� appointment.selectAll
	<select id="selectAll" parameterClass="String" resultClass="appoint">
	select * from appointment where id=#id# order by aid desc
	</select> - appointment���� id�� id�϶� �˻� aid ������������ 
	�� id�� id�϶� ��� ���ڵ带 �˻��Ͽ� List�� �������ڴٴ� ����. 
	
request.setAttribute("list", list);
return "/mypage/myreservation.jsp/"
}
*/

