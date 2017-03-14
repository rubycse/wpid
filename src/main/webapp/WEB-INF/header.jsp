<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a href="<c:url value="/"/>" class="navbar-brand">
                <img src='<c:url value="/images/water.png"/>' style="height: 22px;">
            </a>
            <a href="<c:url value="/"/>" class="navbar-brand">
                Water Point ID
            </a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <c:if test="${sessionScope.USER != null}">
                    <li><a href="<c:url value='/main/project/list'/>">Projects</a></li>
                </c:if>
            </ul>
            <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <c:choose>
                    <c:when test="${sessionScope.USER == null}">
                        <li><a href="<c:url value='/auth/signin'/>">Sign In</a></li>
                        <li><a href="<c:url value='/auth/signup'/>">Sign Up</a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="<c:url value='/main/project/show'/>">Create Project</a></li>
                                <li class="divider"></li>
                                <li><a href="<c:url value='/auth/myProfile'/>">My Profile</a></li>
                                <li><a href="<c:url value='/auth/changePassword'/>">Change Password</a></li>
                                <li><a href="<c:url value='/main/settings'/>">Settings</a></li>
                                <li class="divider"></li>
                                <li><a href="<c:url value='/auth/signout'/>">Sign Out</a></li>
                            </ul>
                        </li>
                    </c:otherwise>
                </c:choose>

            </ul>
        </div>
    </div>
</nav>
