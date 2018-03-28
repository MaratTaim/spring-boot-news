<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/bootstrap.min.css">
</head>

<body ng-app="springDemo">

<div class="container" style="margin-top: 30px" ng-controller="AppCtrl">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">Сайты StackOverflow</div>
                <div class="panel-body">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                                <th>icon</th>
                                <th>id</th>
                                <th>website</th>
                                <th>title</th>
                                <th>description</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr ng-repeat="item in websites">
                            <td></td>
                            <td>{{item.id}}</td>
                            <td></td>
                            <td>{{item.title}}</td>
                            <td></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="/angular.min.js"></script>
<script type="text/javascript" src="/main.js"></script>
</body>
</html>
