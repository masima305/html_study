package action;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LifeCycle
 */
@WebServlet("/Life.do")
public class LifeCycle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LifeCycle() {
    	//서블릿이 동작할 때 가장 먼저 호출되는 생성자
    	System.out.println("--- 1.LifeCycle()---");  
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	
    public void init(ServletConfig config) throws ServletException {
		// 브라우저 정보 초기화
    	System.out.println("--- 2.init()---");
	}

	public void destroy() {
		//현제 서블릿의 내용이 변경되면 호출
		System.out.println("---destroy()---");
	}

	public String getServletInfo() {
		return null; 
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청사항이 들어오면 갱신되는 메서드
		System.out.println("---3.service()---");
		super.service(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청 방식에 따른 호출
		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("---3-1.doGet()---");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청방식에 따른호출
		doGet(request, response);
		System.out.println("---3-1.dopost()---");
		
	}

}
