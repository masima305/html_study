<%@page import="vo.DeptVO"%>
<%@page import="java.util.List"%>
<%@page import="dao.DeptDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//부서목록 가져오기
	DeptDAO dao = DeptDAO.getInstance(); 	
	List< DeptVO > dept_list = dao.selectList();

	
	
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border='1'>
		
		<caption>부서목록</caption>
		
		<tr>
			<th>부서번호</th>
			<th>부서명</th>
			<th>부서위치</th>
		</tr>
		
		<% for(int i = 0; i < dept_list.size(); i++){ %>
		
			<tr>
				<td> <%= dept_list.get(i).getDeptNo() %> </td>
				<td> <%= dept_list.get(i).getdName() %></td>
				<td> <%= dept_list.get(i).getLoc() %></td>
			</tr>

		<% } %>
		
	</table>
</body>
</html>











