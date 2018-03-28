<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
    <link href="/bootstrap.min.css" rel="stylesheet">
    <script src="/jquery-2.2.1.min.js"></script>
    <script src="/bootstrap.min.js"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><tiles:getAsString name="title" ignore="true"/></title>
</head>
<body>
<table border="1" cellpadding="2" cellspacing="2" align="center" style="height: 505px; width: 857px;">
    <tr>
        <td height="50px" colspan="2">
            <div class="container"><tiles:insertAttribute name="header" ignore="true"/></div>

        </td>
    </tr>
    <tr>
        <td width="200" height="250">
            <tiles:insertAttribute name="menu"/>
        </td>
        <td width="650" height="250">
            <tiles:insertAttribute name="body"/>
        </td>
    </tr>
    <tr>
        <td height="20px" colspan="2">
            <tiles:insertAttribute name="footer"/>
        </td>
    </tr>
</table>
</body>
</html>

<%--<body>--%>
<%--<div class="container" style="margin: 50px">--%>
<%--<tiles:insertAttribute name="header" />--%>
<%--<tiles:insertAttribute name="body" />--%>
<%--<tiles:insertAttribute name="footer" />--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>


<%--<html>--%>
<%--<head>--%>