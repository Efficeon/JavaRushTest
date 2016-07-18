<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<html>
<head>
    <title>Users with name ${usersByName.get(0).name}</title>
    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #747474;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 18px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 18px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>
</head>
<!-- Latest compiled and minified CSS -->

<body>
<br/>
<br/>

<body>

<table class="table table-striped">

    <thead>
    <tr>
        <th>ID</th>
        <th >Имя</th>
        <th >Возраст</th>
        <th >Права администратора</th>
        <th>Дата создания</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <c:forEach items="${usersByName}" var="user">
    <tr>
        <td>${user.id}</td>
        <td>${user.name}</td>
        <td>${user.age}</td>
        <td>${user.admin}</td>
        <td>${user.createdDate}</td>
        <td><a href="<c:url value='/edit/${user.id}'/>">Изменить</a></td>
        <td><a href="<c:url value='/remove/${user.id}'/>">Удалить</a></td>
    </tr>
    </c:forEach>
    </tr>
    </tbody>
</table>
</body>
</body>
</html>
