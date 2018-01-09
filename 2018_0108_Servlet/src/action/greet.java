package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class greet
 */
@WebServlet("/greet.do")
public class greet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */



	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//greet.do?nation = kor <- 이런 형태로 파라미터 받을 예정
		//클라이언트가 요청한 파라미터 정보를 받는다.
		//파라미더는 무조건 스트링이다.

		String nation = request.getParameter("nation");
		String msg = "";

		//외부에서 값이 넘어올때 아래와 같이 잘 못 들어오는 경우가 생길 수 있다.
		//1) greet.do? nation= : nation값이 ""인 상태
		//2) greet.do : nation값이 NULL인 상태

		if(nation == null || nation.isEmpty()) {
			//오류가 날 경우 기본nation값은 한국어로 세팅한다.
			nation = "kor";

		}

		if(nation.equals("kor")) {
			msg = "안녕하세여";
		}else if (nation.equals("eng")) {
			msg = "hello";
		}else if (nation.equals("jpn")) {
			msg = "こんにちは";
		}else if(nation.equals("chn")) {
			msg = "你好";
		}

		//문자 인코딩
		response.setContentType("text/html; charset=utf-8;"); 

		//응답을 위한 전송 스트림 얻기

		PrintWriter out = response.getWriter();

		StringBuffer sb = new StringBuffer();



		sb.append("<html>");

		sb.append("	<head>");

		sb.append("		<title>");
		sb.append("		</title>");

		sb.append("		<style> h1{color:red;}");
		sb.append("		</style>");

		sb.append("	</head>");

		sb.append("	<body>");

		sb.append("		<h1>");
		sb.append(msg);
		sb.append("		</h1>");

		sb.append("	</body>");

		sb.append("</html>");

		out.print(sb.toString());
	}

}
