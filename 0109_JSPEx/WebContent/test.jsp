<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- jsp: 내부적으로 연산능력을 갖는 html이라고 생각하면 된다.
     jsp에서 작업을 완료한 후 호출하면, 서블릿으로 변환되어 실행되며
        서블릿만으로는 한계가 있는 UI디자인을 쉽게 할 수 있도록 만들어져 있다.-->
    
<% 
	//스크립트릿(Scriptlet):jsp에서 자바코드를 사용하고자 할 때
	//지정하는 영역
	String ip = request.getRemoteAddr();//접속자의 ip주소 얻어오기
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>

	<body>
		<p> &lt;%@ 내용 %&gt; : jsp헤더 - import문장 등을 설정할때 필요.</p>
		<p> &lt;% 자바코드 %&gt; 
		: 스크립트 릿 - jsp에서 자바코드를 사용하고자 할때 지정하는 영역</p>
		
		<p> &lt;%= 변수명 %gt; : 스크립트릿의 변수를 출력하는 코드</p>
	
		<%= ip %>님 방문을 환영합니다
	
		
	</body>
</html>


































