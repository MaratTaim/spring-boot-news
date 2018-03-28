<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="h" uri="http://jakarta.apache.org/struts/tags-html" %>--%>
<%--<%@ taglib prefix="bean" uri="http://jakarta.apache.org/struts/tags-bean" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>--%>

<html>
<head>
    <link href="/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <title>New View</title>
</head>
<body>
<form action="/News.do" method="POST">
    <%--<h:errors/>--%>
    <input type="hidden" name="id" value="${news.id}"/>
    <table style="text-align: left" >
        <tr>
            <th class="view">News Title: </th>
            <td class="view"><c:out value='${news.title}'/></td>
        </tr>
        <tr>
            <th class="view">News Date: </th>
            <td class="view"><c:out value='${news.date}'/></td>
        </tr>
        <tr>
            <th class="view">Brief: </th>
            <td class="view"><c:out value='${news.brief}'/></td>
        </tr>
        <tr>
            <th class="view">Content: </th>
            <td class="view"><c:out value='${news.content}'/></td>
        </tr>
        <tr>
            <th></th>
            <td style="text-align: right">
                <a href="/news/edit/${news.id}">
                    <spring:message code="lang.edit"/></a>

            <a href="/news/delete/${news.id}" onclick="return confirm('delete?');">
                        <spring:message code="info.delete"/></a>
                </td>
        </tr>
    </table>
</form>
</body>
</html>
