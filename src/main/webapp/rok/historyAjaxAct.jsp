<%@page import="java.util.Iterator"%>
<%@page import="domain.ExamVO"%>
<%@page import="java.util.List"%>
<%@page import="dao.ExamDAO"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>




	<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; chatset=UTF-8"); //한글 깨짐 방지

	String q = request.getParameter("q");
	if("".equals(q)){
		out.println("검색된 데이터가 없습니다.");
	}else{
	
	ExamDAO dao = new ExamDAO();
	List<ExamVO> list = dao.read(q);
	Iterator<ExamVO> it = list.iterator();

	while (it.hasNext()) {
		ExamVO vo = it.next();
	%>

	<div>문제. <%=vo.getQs() %></div>
	<div>정답. <%=vo.getAn() %></div>
	
		<%
	}
	}
	%>
	
