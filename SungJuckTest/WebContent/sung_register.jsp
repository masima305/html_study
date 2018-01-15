<%@page import="dao.SjDAO"%>
<%@page import="vo.SjVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	int kor = Integer.parseInt( request.getParameter("kor") );
	int eng = Integer.parseInt( request.getParameter("eng") );
	int mat = Integer.parseInt( request.getParameter("mat") );
	
	//파라미터로 넘어온 값들을 vo로 묶어준다.
	SjVO vo = new SjVO();
	vo.setName(name);
	vo.setKor(kor);
	vo.setEng(eng);
	vo.setMat(mat);

	int res = SjDAO.getInstance().insert( vo );
	System.out.println( res );
	
	//갱신된 데이터를 가지고 페이지 전환
	response.sendRedirect("student.jsp");
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



















