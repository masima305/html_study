<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	
	<style>
		td{
			width: 150px;
			text-align:center;
		}
		
		.c1{
			background: red;
		}
		.c2{
			background: orange;
		}
		.c3{
			background: yellow;
		}
		.c4{
			background: green;
		}
		.c5{
			background: blue;
		}
		.c6{
			background: ;
		}
		.c7{
			background: purple;
		}
	</style>
	<body>
	
	<table border="1">
		
	<% for(int i = 1; i < 10; i++) { %>
		<tr class="c<%= i %>">
		<% for(int j = 2; j < 10; j++) { %>
			<td>
				<%=j%>*<%=i%> = <%=i*j%>
			</td>
		<% } %>
		</tr>
	<% } %>
	
	
	
	</table>
	
	
	</body>
</html>