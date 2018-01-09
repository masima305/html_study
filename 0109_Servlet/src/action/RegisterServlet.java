package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/member_reg.do")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(
			HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {

		//POST로 요청객체가 넘어오면, 반드시 인코딩 해줘야 한다.
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		//아이디
		String id = request.getParameter("id");
		//비밀번호
		String pwd= request.getParameter("pwd");
		
		//성별
		String gender = request.getParameter("gender");
		
		//혈액형
		String blood = request.getParameter("blood");
		
		//프로필
		
		//하나이상의 항목을 파라미터로 넘기는 경우에는 배열로 받는다.
		String[] friend = request.getParameterValues("friend");
		//이름이 들어있는 친구 정보만 꺼내오기
		String friend_result = "";
		for( String str : friend ) {
			
			friend_result += str + " ";
			
		}//for
		
		if( friend_result.length() == 0 ) {
			friend_result = "등록한 추천친구가 없습니다.";
		}
		
		//취미 파라미터 배열로 받기
		//<checkbox> : 체크가 된것만 넘어온다. 체크된게 한개도 없으면 null
		String[] hobby = request.getParameterValues("hobby");
		String hobby_result = "";
		
		if(hobby != null) {
			for( String h : hobby ) {
				hobby_result += h + " ";
			}
		}else {
			hobby_result = "취미가 없습니다.";
		}
		
		response.setContentType("text/html; charset=utf-8;");
		PrintWriter out = response.getWriter();
		StringBuffer sb = new StringBuffer();
		
		
		sb.append("<html>");

		sb.append("	<head>");

		sb.append("		<title>");
		sb.append("		</title>");

		sb.append("	</head>");

		sb.append("	<body>");

		sb.append("<talble>");
		
		sb.append("	<tr>");
		sb.append("		<th>");
		sb.append("			이름");
		sb.append("		</th>");
		sb.append("		<td>");
		sb.append("			"+name);
		sb.append("		</td>");
		sb.append("	</tr>");	
		
		sb.append("	<tr>");
		sb.append("		<th>");
		sb.append("			아이디");
		sb.append("		</th>");
		sb.append("		<td>");
		sb.append("			"+id);
		sb.append("		</td>");
		sb.append("	</tr>");
		
		
		sb.append("	<tr>");
		sb.append("		<th>");
		sb.append("			비밀번호");
		sb.append("		</th>");
		sb.append("		<td>");
		sb.append("			"+pwd);
		sb.append("		</td>");
		sb.append("	</tr>");
		
		
		sb.append("	<tr>");
		sb.append("		<th>");
		sb.append("			성별");
		sb.append("		</th>");
		sb.append("		<td>");
		sb.append("			"+gender);
		sb.append("		</td>");
		sb.append("	</tr>");
		
		sb.append("	<tr>");
		sb.append("		<th>");
		sb.append("			혈액형");
		sb.append("		</th>");
		sb.append("		<td>");
		sb.append("			"+blood);
		sb.append("		</td>");
		sb.append("	</tr>");
		
		sb.append("</talble>");

		sb.append("	</body>");

		sb.append("</html>");
		
		
		
		
		
		
		
		
		out.print(sb.toString());
		
		
	}

}











