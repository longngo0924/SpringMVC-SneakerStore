<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  	<meta name="description" content="">
  	<meta name="author" content="">

  	<title>Shop Homepage - Start Bootstrap Template</title>

  	<!-- Bootstrap core CSS -->
  	<link href="<c:url value='/template/web/vendor/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css">
  	

  	<!-- Custom styles for this template -->
  	<link href="<c:url value='/template/web/css/shop-homepage.css'/>" rel="stylesheet" type="text/css">
  	
</head>
<body>
	<%@ include file="/common/web/header.jsp" %>
	
	<dec:body/>
	
	<%@ include file="/common/web/footer.jsp" %>
	
	<script src="<c:url value='/template/web/vendor/jquery/jquery.min.js'/>"></script>
	<script src="<c:url value='/template/web/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
  	
</body>
</html>