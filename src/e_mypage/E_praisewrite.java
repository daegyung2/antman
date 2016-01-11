package e_mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.DepartmentDTO;
import praiseboard.PraiseVO;




@Controller
public class E_praisewrite {
   
   @Autowired
   private SqlMapClientTemplate sqlMapClient;
   String view;
   
   @RequestMapping("/e_praisewrite.do")
   public String write(HttpServletRequest request , PraiseVO dto , String drname){
	 
      String dpname = (String)dto.getDpname();
      System.out.println(dpname);
      List dplist = sqlMapClient.queryForList("praise.selectdepart",dto);
      
      List drlist = sqlMapClient.queryForList("praise.selectdoctor",dto.getDpname());
      
      /*dto = (PraiseVO)sqlMapClient.queryForObject("priase.selectdridname",drname);*/
     
 	 if(drlist.size() == 0){
		 view = "no";
	 }else if (drlist.size() != 0){
		 view = "yes";
	 }
 	System.out.println(view);
      

      request.setAttribute("view", view);
      request.setAttribute("dplist",dplist);
      request.setAttribute("drlist",drlist);
      /*request.setAttribute("drid",dto);*/
      request.setAttribute("drname",drname);
      return "/e_mypage/e_praisewrite.jsp";
   } 
    
   
   @RequestMapping("/e_praisepro.do")
   public String writepro(PraiseVO dto){
      
      sqlMapClient.insert("praise.insertpraise", dto);      
      
      return "redirect:/e_praiseboard.do";
   }
   
   
   @RequestMapping("/e_praisecontent.do")
   public String VIEW(HttpServletRequest request,PraiseVO dto)throws Exception{
      int pid =(int)dto.getPid();
      System.out.println(dto.getPid());
   
      
      dto = (PraiseVO)sqlMapClient.queryForObject("praise.finddoctor",dto.getPid());
   
      request.setAttribute("pid",pid);
      request.setAttribute( "dto",dto );
      return "/e_mypage/e_praisecontent.jsp";
   }
   
   

}