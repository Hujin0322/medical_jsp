package com.java.www;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.service.BoardDeleteService;
import com.java.www.service.BoardDoModifyService;
import com.java.www.service.BoardListService;
import com.java.www.service.BoardModifyService;
import com.java.www.service.BoardReadService;
import com.java.www.service.BoardService;
import com.java.www.service.BoardWriteService;
import com.java.www.service.MemberLoginService;
import com.java.www.service.MemberService;

@WebServlet("*.do")
public class FrontController extends HttpServlet {

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		System.out.println("doAction 호출");
    	String url = null;
    	String uri = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String fileName = uri.substring(contextPath.length()); //파일 이름 알아내기
    	System.out.println("클릭된 파일 이름: "+fileName);
    	BoardService boardService = null;
    	MemberService memberService = null;
    	
    	//response.sendRedirect("이동 페이지"): DB에 저장X, 이동만 (새로운 URL로 이동)
    	//RequestDispatcher dispatcher = request.getRequestDispatcher(url): DB에 저장O, 이동O (기존 URL로 이동)
    	if(fileName.equals("/index.do")) {
    		url = "index.jsp";
    	}else if(fileName.equals("/login.do")){
    		url = "login.jsp";
    	}else if(fileName.equals("/doLogin.do")){
    		memberService = new MemberLoginService();
    		memberService.execute(request, response);
    		response.sendRedirect("index.do");
    	}else if(fileName.equals("/join01_terms.do")){
    		url = "join01_terms.jsp";
    	}else if(fileName.equals("/write.do")){
    		url = "write.jsp";
    	}else if(fileName.equals("/doWrite.do")){
    		// btitle,bcontent 넘어옴
    		boardService = new BoardWriteService();
    		boardService.execute(request, response);
    		response.sendRedirect("list.do");
    	}else if(fileName.equals("/read.do")){
    		boardService = new BoardReadService();
    		boardService.execute(request, response);
    		url = "read.jsp";
    	}else if(fileName.equals("/modify.do")){
    		boardService = new BoardModifyService();
    		boardService.execute(request, response);
    		url = "modify.jsp";
    	}else if(fileName.equals("/doModify.do")){
    		boardService = new BoardDoModifyService();
    		boardService.execute(request, response);
    		url = "update.jsp";
    	}else if(fileName.equals("/delete.do")){
    		System.out.println("BoardDeleteService 호출");
    		boardService = new BoardDeleteService();
    		boardService.execute(request, response);
    		url = "delete.jsp";
    	}else if(fileName.equals("/list.do")){
//    		response.sendRedirect("list.jsp");
    		//부모의 참조변수로 자손의 객체를 다루는 것 (=다형성)
    		boardService = new BoardListService(); //객체 선언
    		boardService.execute(request, response);
    		url = "list.jsp";
    	}
    	
    	if(url != null) {
    		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
    		dispatcher.forward(request, response);    		
    	}
    	
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet 호출");
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost 호출");
		doAction(request, response);
	}

}
