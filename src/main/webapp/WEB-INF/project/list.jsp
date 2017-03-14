<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        ADP Allocation Detail
    </title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script type="text/javascript">
        function toggle(id) {
            var icon = $('#' + id);
            icon.toggleClass('glyphicon-menu-right');
            icon.toggleClass('glyphicon-menu-down');
        }
    </script>

</head>
<body>
<div class="page-header" id="banner">
    <div class="row">
        <div class="col-sm-12">
            <div class="pull-left"><h1>Projects</h1></div>
        </div>
    </div>
</div>

<%--<div class="subtitle">--%>
    <%--<div class="row">--%>
        <%--<div class="col-sm-11">--%>
            <%--<h3>List of Work Order</h3>--%>
        <%--</div>--%>
        <%--<div class="col-sm-1">--%>
            <%--<h3 class="pull-right" data-toggle="collapse" data-target="#workOrders" onclick="toggle('workOrderCollapse');">--%>
                <%--<span id="workOrderCollapse" class="glyphicon glyphicon-menu-right"></span>--%>
            <%--</h3>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

<div class="row">
    <div class="col-lg-12">
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th>Name</th>
                <th>Description</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${projects}" var="project">
                <c:url var="projectUrl" value='show'>
                    <c:param name="id" value="${project.id}"/>
                </c:url>
                <tr>
                    <td><a href="${projectUrl}"><c:out value="${project.name}"/></a></td>
                    <td><c:out value="${project.description}"/></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <a href="#" class="btn btn-sm btn-success">Add Work Order</a>
    </div>
</div>

</body>
</html>
