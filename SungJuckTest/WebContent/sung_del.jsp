<%@page import="dao.SjDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	
	request.setCharacterEncoding("utf-8");

	int no = Integer.parseInt( request.getParameter("no") );
	
	//res가 0이면 삭제할 학생이 존재하지 않는다는 의미.
	int res = SjDAO.getInstance().delete( no );
	System.out.println( "결과 " + res );

	//갱신된 데이터를 가지고 돌아갈 페이지를 로드
	response.sendRedirect( "student.jsp" );
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>