<!DOCTYPE html>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta http-equiv=X-UA-Compatible content="IE=edge">
    <meta name=viewport content="width=device-width,initial-scale=1">

    <title>WPID&nbsp;::&nbsp;<decorator:title/></title>

    <link href='<c:url value="/images/favicon.ico"/>' rel="icon" type="image/x-icon">

    <link href='<c:url value="/bootstrap/3.3.6/standstone/bootstrap.min.css"/>' rel="stylesheet" type="text/css">
    <script src="<c:url value="/js/jquery-1.11.3.min.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/bootstrap/3.3.6/js/bootstrap.min.js"/>" type="text/javascript"></script>

    <link href='<c:url value="/css/wpid-1.0.0.css"/>' rel="stylesheet" type="text/css">

    <decorator:head/>
</head>

<body>

<jsp:include page="/WEB-INF/header.jsp"/>

<br/>
<div id="pageContent" class="container">

    <decorator:body/>
</div>

<jsp:include page="/WEB-INF/footer.jsp"/>

</body>
</html>
