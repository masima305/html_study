package action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JuminServlet
 */
@WebServlet("/jumin.do")
public class JuminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//POST넘어오는 경우에는 인코딩 필수
		request.setCharacterEncoding("utf-8");
		
		String year = request.getParameter("year");
		String age = request.getParameter("age");
		String season = request.getParameter("season");
		
		//응답
		response.setContentType("text/html; charset=utf-8;");
		
		StringBuffer sb = new StringBuffer();
		
		sb.append("<html>");
		
			sb.append("<head>");
			sb.append("</head>");
			
			sb.append("<body>");
				sb.append("<table border='1'>");
					sb.append("<tr>");
						sb.append("<td>출생년도</td>");
						sb.append("<td>"+ year +"</td>");
					sb.append("</tr>");
					
					sb.append("<tr>");
						sb.append("<td>나이</td>");
						sb.append("<td>"+ age +"</td>");
					sb.append("</tr>");
					
					sb.append("<tr>");
						sb.append("<td>계절</td>");
						sb.append("<td>"+ season +"</td>");
					sb.append("</tr>");
					
				sb.append("</table>");
			sb.append("</body>");
		
		sb.append("</html>");
		
		//클라이언트에 출력
		response.getWriter().println( sb.toString() );
	}

}














