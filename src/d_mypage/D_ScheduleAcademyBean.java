package d_mypage;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import academy.pagingActionaca;
import admin.bean.AcademyDTO;
import admin.bean.DoctorDTO;
@Controller
public class D_ScheduleAcademyBean {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
    private int currentPage= 1;
    private int totalCount;
    private int blockCount = 10; // 여기를 조절하면 한페이지당 레코드 몇개 출력할것인지 선택가능
    private int blockPage = 5;
    private String pagingHtml;
    private pagingActionaca page;
	private List fileList;
	private int asid;
	private MultipartFile file;
	private String view;

	private String ymd;
	
	@RequestMapping("/scheduleacademy.do")
	public String list(HttpServletRequest request, String PageNum , AcademyDTO dto,String drname ){
  	  PageNum = request.getParameter("PageNum");
  	 dto.setDrid(Integer.parseInt(request.getParameter("drid"))); 
  	  System.out.println(dto.getId());
  	int asid =(int)dto.getAsid();
  	System.out.println(dto.getAsid());
  	  	if(PageNum == null){
  	  		currentPage =1;
  	  	}else{
  	  		currentPage = Integer.parseInt(PageNum);
  	  	}
       ModelAndView mv = new ModelAndView();
       totalCount = (Integer)sqlMapClient.queryForObject("academy.selectLastNosc" , dto);
       page = new pagingActionaca(currentPage,totalCount,blockCount,blockPage);
       
       
       int lastCount = totalCount;
       if(page.getEndCount() < totalCount){
           lastCount = page.getEndCount() +1;
       }
       List list = sqlMapClient.queryForList("academy.selectAllsc",dto);
       list = list.subList(page.getStartCount(), lastCount);
     
       pagingHtml = page.getPagingHtml().toString();
       //asid를 꺼내야한다.
       /*int asids  = (Integer)sqlMapClient.queryForObject("academy.selectasid" , dto.getId());*/
     

      request.setAttribute("totalCount",totalCount);
      request.setAttribute("list",list);
      request.setAttribute("pagingHtml",pagingHtml);
      request.setAttribute("view",view);
      request.setAttribute("2drname",drname);       
       
       
       

       return "/d_mypage/d_academy.jsp";
	
	}
	
	@RequestMapping("/academywrite.do")
	public String form(HttpServletRequest request ){
	      
		
		return "/d_mypage/d_academywrite.jsp";
	}
	@RequestMapping("/sacademyinsert.do")
	public String appointmentsimple(AcademyDTO dto,String ymd,MultipartHttpServletRequest request )throws IllegalStateException, IOException{
		//학술행사시간 ymd
		String astime = ymd+" "+dto.getHour()+":"+dto.getMinute();
		dto.setAstime(astime);
		String astimeend = ymd+" "+dto.getHoure()+":"+dto.getMinutee();
		dto.setAstimeend(astimeend);
		System.out.println(astimeend);
		String ascontent = dto.getAscontent();
		dto.setAscontent(ascontent.replace("\r\n","<br />"));
		sqlMapClient.insert("academy.insertacademy",dto);
		
		asid = (int) sqlMapClient.queryForObject("academy.max",dto);
	   dto.setAsid(asid);
	   System.out.println(asid);
	   file = request.getFile("upload");
	  
	   if(!file.isEmpty()){
	   String name = file.getOriginalFilename();//C:\Users\downmemory\git\antman
	   File sf = new File("c://Users//user1//git//antman//WebContent//image//academyimg//"+name);
	   file.transferTo(sf);
	   dto.setAsimg("/antman/image/academyimg/"+name);
	   sqlMapClient.update("academy.academyasimg",dto);
	   }else{
	   dto.setAsimg("/antman/image/noimage.jpg");
	   sqlMapClient.update("academy.academyasimg",dto);
	   
	   
	   }
	   return "/scheduleacademy.do?drid=${sessionScope.memdrid}&drname=${sessionScope.memname}";
	}
	@RequestMapping("/dacademycontent.do")
	public String form(HttpServletRequest request, AcademyDTO dto, DoctorDTO ddto ){
	      int asid =(int)dto.getAsid();
	     int drId =(int) dto.getDrid(); 
	     ddto.setDrId(drId);
	     
	     
	      dto = (AcademyDTO)sqlMapClient.queryForObject("academy.selectcontent",dto.getAsid());
	      ddto = (DoctorDTO)sqlMapClient.queryForObject("doctor.selectDr",ddto);
	      /*int asids  = (Integer)sqlMapClient.queryForObject("academy.selectasid" , dto.getId());*/
	      String id = (String)request.getParameter("id");
	     
	     
	      dto.setId(id);
	      
	      String aasubject = dto.getAssubject();
	      dto.setAasubject(aasubject);
	      
	      int check = (int)sqlMapClient.queryForObject("academy.idcheck",dto);
	      
	      int asendcheck = (int)sqlMapClient.queryForObject("academy.asendcheck",dto);
	      System.out.println(check);
				System.out.println(asendcheck);
	      request.setAttribute("asendcheck", asendcheck);
	      request.setAttribute("check", check);
	      request.setAttribute("asid",asid);
	      request.setAttribute("check",check);
	      request.setAttribute( "dto",dto );
	      request.setAttribute( "ddto",ddto );
		return "/d_mypage/d_academycontent.jsp";
	}
	
	@RequestMapping("/dacademyupdate.do")
	public String update(HttpServletRequest request, AcademyDTO dto, DoctorDTO ddto ){
	      int asid =(int)dto.getAsid();
	     int drid =(int) dto.getDrid(); 
	     
	     dto = (AcademyDTO)sqlMapClient.queryForObject("academy.academyaslistselect",dto);
	     String ascontent = dto.getAscontent();
	     dto.setAscontent(ascontent.replace("<br />", "/r/n"));
	     request.setAttribute("dto", dto);
		return "/d_mypage/d_academyupdate.jsp";
	
	}
		
		@RequestMapping("/sacademyupdatepro.do")
		public String pro(MultipartHttpServletRequest request, AcademyDTO dto, DoctorDTO ddto,String ymd ) throws IllegalStateException, IOException{
			System.out.println(dto.getAsid());
			int asid =(int)dto.getAsid();
		     int drid =(int) dto.getDrid(); 
				String astime = ymd+" "+dto.getHour()+":"+dto.getMinute();
				dto.setAstime(astime);
				String astimeend = ymd+" "+dto.getHoure()+":"+dto.getMinutee();
				dto.setAstimeend(astimeend);
				System.out.println(astimeend);
				String ascontent = dto.getAscontent();
				dto.setAscontent(ascontent.replace("\r\n","<br />"));
				sqlMapClient.update("academy.academyupdate",dto);
		
				asid = dto.getAsid();
				   dto.setAsid(asid);
				   System.out.println(asid);
				   file = request.getFile("upload");
				  
				   if(!file.isEmpty()){
				   String name = file.getOriginalFilename();//C:\Users\downmemory\git\antman
				   File sf = new File("c://Users//user1//git//antman//WebContent//image//academyimg//"+name);
				   file.transferTo(sf);
				   dto.setAsimg("/antman/image/academyimg/"+name);
				   sqlMapClient.update("academy.academyasimg",dto);
				   }else{
				   dto.setAsimg("/antman/image/noimage.jpg");
				   sqlMapClient.update("academy.academyasimg",dto);
				   }
				   return "/scheduleacademy.do" ;
		
		}
	
	@RequestMapping("/dacademydelete.do")
	public String delete(HttpServletRequest request, AcademyDTO dto, DoctorDTO ddto ){
		System.out.println(dto.getDrid());
	    sqlMapClient.delete("academy.deleteacademy",dto);

		return "/scheduleacademy.do";
	
		
	
	}
	
}
