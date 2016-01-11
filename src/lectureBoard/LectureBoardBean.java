package lectureBoard;


import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.LectureBoardDTO;
import p_mypage.p_pagingActions;
import praiseboard.PraiseVO;



@Controller
public class LectureBoardBean {
	
		@Autowired
		private SqlMapClientTemplate sqlMapClient;
		private List list;
		private int currentPage= 1;
		private int totalCount;
		private int blockCount = 10;
		private int blockPage = 5;
		private String pagingHtml;
		private Lecturepaging page;
		
		
		@RequestMapping("/lectureboard.do")
		public String listAction (LectureBoardDTO dto, HttpServletRequest request, String pageNum){ 
		 
			list = sqlMapClient.queryForList("lectureBoard.selectAll",dto);
			System.out.println(list.size());
			page = new Lecturepaging(currentPage,totalCount,blockCount,blockPage, blockCount);
			pagingHtml = page.getPagingHtml().toString();
			
			int lastCount = totalCount;
			
			if(page.getEndCount() < totalCount)
				lastCount = page.getEndCount() +1;
			
			//list = list.subList(page.getStartCount(), lastCount);
			System.out.println(list.size());
			request.setAttribute("list", list);
			
			
			return "/intro/lectureboard/lectureboard.jsp";
		}
		
	

	}
