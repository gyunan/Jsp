<%@page import="kr.co.jboard1.bean.MemberBean"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 프로젝트 시작처리 페이지
	MemberBean mb = (MemberBean)session.getAttribute("sessMember");
	
	if(mb == null){
		// 로그인을 안했으면 로그인 페이지로 포워드
		pageContext.forward("./user/login.jsp");
		
	}else{
		// 로그인 했으면 리스트 페이지로 포워드
		pageContext.forward("./list.jsp");
	}
	
%>