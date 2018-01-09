package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class helloco
 */


//웹 프로그래밍은 기본적으로 요청 -> 응답이라는 단계를 거쳐야 하나의 사이클이 완성되는 개념이다.

@WebServlet("/hello2.do")
public class helloco extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	  @Override
	protected void service(HttpServletRequest arg0, //요청
			HttpServletResponse arg1) 				//응답
					throws ServletException, IOException {
	
		  //요청한 사용자의 IP
		  String ip = arg0.getRemoteAddr();
		  System.out.println(ip);
		  
		  //접속한 사용자에게 응답처리
		  arg1.setContentType("text/html; charset = utf-8;");
		  PrintWriter out = arg1.getWriter();
		  //out.printf(ip+"님을 환영합니다.");
		  
		  out.println("<html>");
		  
		  out.println("	<head>");
		  
		  out.println("		<title>");
		  out.println("		</title>");
		  
		  out.println("		<style> h1{color:red;}");
		  out.println("		</style>");
		  
		  out.println("	</head>");
		  
		  out.println("	<body>");
		  
		  out.println("		<h1>");
		  out.printf("			[%s]님 방문을 환영합니다",ip);
		  out.println("		</h1>");
		  
		  out.println("	</body>");
		  
		  out.println("</html>");
		  
		  System.out.println("out");
	  }

}

