<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <link href="/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <title>Add News</title>
</head>
<body>
<form:form action="/news/save" method="post" commandName="news">

    <table style="text-align: left">
        <tr>
            <th><spring:message code="info.title"/></th>
            <form:errors path="title"/>
            <td><form:input path="title" class="form-Control" maxlength="100" cssStyle=""/></td>
        </tr>
        <tr>
            <th><spring:message code="info.date"/></th>
            <form:errors path="date"/>
            <td><form:input path="date" class="form-Control" maxlength="10" /></td>
        </tr>
        <tr>
            <th><spring:message code="info.brief"/></th>
            <td>
                <form:input path="brief" class="form-Control" maxlength="512" cssStyle=""/></td>
        </tr>
        <tr>
            <th><spring:message code="info.content"/></th>
            <td><form:input path="content" class="form-Control" maxlength="1000" cssStyle=""/></td>
        </tr>
        <tr  style="text-align: right">
            <th><form:hidden path="id"/></th>

            <td><input type="submit" value="<spring:message code="info.save"/>" class="btn btn-default"/>

                <input class="button" type="button" onclick="history.back();" value="<spring:message code="info.cancel"/>"/></td>
        </tr>
    </table>
</form:form>

</body>
</html>
