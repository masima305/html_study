package action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class HelloAction
 */
public class HelloAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#service(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request : 요청처리 객체
		// response : 응답처리 객체
		System.out.println("--- hello servlet : service() --- ");
	
		/*
		 * 
		 * 서블릿 (server+let)
		 * 서버에서 실행되는 서비스(사용자의 요구사항을 제공해주는)객체
		 * 
		 * 웹 응용프로그램을 만드는 자바 기술이며, 실행 결과값은 html로 돌려준다.
		 * html의 정적인 문제를 해결할 수 있는 동적인 특징을 갖는다.
		 * 자바 언어로 작성되어 자바의 일반적인 특징을 모두 갖는다.
		 * 객체지향적이다
		 * 스레드로 처리한ㄴ다.(동시다발적인 사용자의 요청에 대한 응답이 용이.)
		 * 
		 * */
		
	}

}
