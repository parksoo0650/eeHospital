<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title><tiles:getAsString name="title"></tiles:getAsString></title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<link rel="stylesheet" href="${context.css}/hanbit.css" />
<script src="${context.js}/patient.js"></script>
</head>
<body>
	<header>
		<div id="publicHeader"> 
			<tiles:insertAttribute name="header"></tiles:insertAttribute>
		</div>
	</header>
	<section>
	<article>
		<div id="patientGnb">
			<tiles:insertAttribute name="gnb" />
		</div>
	</article>
		<article id="patientArticle" style="width: 100%">
			<tiles:insertAttribute name="container"/>
			
		</article>
	</section>
	<footer>
		<tiles:insertAttribute name="footer"/>
	</footer>
</body>
</html>
