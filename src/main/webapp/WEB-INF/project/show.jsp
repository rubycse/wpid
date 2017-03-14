<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        ${readOnly ? 'Project' : 'Create Project'}
    </title>
</head>
<body>
<div class="page-header" id="banner">
    <div class="row">
        <div class="col-sm-12">
            <h1>${readOnly ? 'Project' : 'Create Project'}</h1>
        </div>
    </div>
</div>

<form:form method="post" commandName="project" cssClass="form-horizontal">

    <div class="row">

        <div class="col-lg-12">
        <div class="well bs-component">
        <%--<form class="form-horizontal">--%>

            <form:errors path="*">
                <div id="div_global_error" align="center">
                    <h1><s:message code="error.title"/></h1>
                    <s:message code="common.error.see"/>
                </div>
            </form:errors>

            <fieldset>
                <div class="form-group">
                    <label for="name" class="col-lg-2 control-label">Name</label>
                    <div class="col-lg-6">
                        <c:choose>
                            <c:when test="${readOnly}">
                                <div class="read-only"><c:out value="${project.name}"/></div>
                            </c:when>
                            <c:otherwise>
                                <form:input path="name" readonly="${readOnly}" cssClass="form-control"/>
                                <form:errors path="name" cssClass="text-danger"/>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>

                <div class="form-group">
                    <label for="description" class="col-lg-2 control-label">Description</label>
                    <div class="col-lg-8">
                        <c:choose>
                            <c:when test="${readOnly}">
                                <div class="read-only"><c:out value="${project.description}"/></div>
                            </c:when>
                            <c:otherwise>
                                <form:textarea path="description" readonly="${readOnly}" cssClass="form-control"/>
                                <form:errors path="description" cssClass="text-danger"/>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>

            </fieldset>
        </div>
        </div>
        <%--</form>--%>
    </div>

    <div class="row">
        <div class="col-lg-12">

            <div class="alert buttons">
                <div class="pull-left left-buttons"></div>
                <div class="pull-right right-buttons">
                    <c:if test="${!readOnly}">
                        <input type="submit" class="btn btn-success" name="_save" value="Save"/>
                    </c:if>
                    <c:if test="${readOnly}">
                        <input type="submit" class="btn btn-success" name="_edit" value="Edit"/>
                        <input type="submit" class="btn btn-success" name="_delete" value="Delete"/>
                    </c:if>
                </div>
            </div>
            </div>
    </div>
</form:form>

</body>
</html>
