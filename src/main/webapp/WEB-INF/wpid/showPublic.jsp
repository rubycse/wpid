<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        Show Quiz
    </title>
    <link href='<c:url value="/css/quiz-1.0.0.css"/>' rel="stylesheet" type="text/css">
</head>
<body>
<div class="page-header" id="banner">
    <div class="row">
        <div class="col-sm-10">
            <h1><c:out value="${quiz.name}"/></h1>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="well bs-component">
            This quiz contains ${fn:length(quiz.questions)} multiple choice questions and should be completed within ${quiz.maxDurationInMin} minutes.
            <br/><br/><a class="btn btn-md btn-success" href="<c:url value="run?id=${quiz.id}"/>">Start Quiz</a>
        </div>
    </div>
</div>
</body>
</html>
