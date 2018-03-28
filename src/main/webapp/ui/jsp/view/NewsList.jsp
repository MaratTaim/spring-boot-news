<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="html" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
    <link href="/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <title>News List</title>

    <script>
        function testForm(f) {
            var errDay = true;
            for (var days = f.delete, j = 0, J = days.length; j < J; j++) if (days [j].checked) {
                errDay = false;
                break
            }
            if (errDay) {
                alert('Select Delete');
                return false
            }
            return true;
        }
    </script>
</head>
<body ng-app="springDemo">


<script type="text/javascript" src="/angular.min.js"></script>
<script type="text/javascript" src="/main.js"></script>
<center ng-controller="AppCtrl">
    <html:form action="news/delete" method="delete">
    <table ng-repeat="news in websites">
        <tr>

            <th style="width: 496px; text-align: left">{{news.title}}</th>
            <td style="width: 157px; text-align: right">{{news.date}}</td>
        </tr>
        <tr>
            <td style="width: 519px;">
                <p>{{news.brief}}</p>
            </td>
        </tr>
        <tr>
            <td></td>
            <td style="width: 39px; text-align: right;">
                <a href="/news/view/{{news.id}}"><spring:message code="lang.view"/></a>
                <a href="/news/edit/{{news.id}}"><spring:message code="lang.edit"/></a>
                <input type="checkbox" name="delete" value="{{news.id}}"/>
            </td>
        </tr>
        <tr></tr>

    </table>


    <table style="text-align: right">
        <tr>
            <td></td>
            <td style="text-align: right">
                <input type="submit" onclick="return testForm(this.form)" value="<spring:message code="label.delete"/>">
            </td>

        </tr>

    </table>

    </html:form>
</center>
</body>
</html>