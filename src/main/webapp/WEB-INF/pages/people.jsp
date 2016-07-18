<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<html>
<head>

    <title>People Page</title>

    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
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

<h1 align="center">Все пользователи</h1>
<div class="row">
    <div class="tg"">
        <c:if test="${!empty listUsers}">
            <table class="table table-striped">
                <tr>
                    <th >ID</th>
                    <th >Имя</th>
                    <th >Возраст</th>
                    <th >Права администратора</th>
                    <th >Дата создания</th>
                    <th >Изменить</th>
                    <th >Удалить</th>
                </tr>
                <c:forEach items="${listUsers.pageList}" var="user">
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

            </table>
            <nav>
                <ul class="pager">
                    <li><a href=${listUsers.page-1>0?listUsers.page:1}>Предыдущая</a></li>
                    ${listUsers.nextPage()}
                    <li><a href=${listUsers.page+1}>Далее</a></li>
                </ul>
            </nav>


        </c:if>
    </div>
    <div class="tg">
        <h3>Поиск пользователя по полю name</h3>



        <br/>
        <br/>

        <form aria-label="Поиск пользователя по полю name"  role="form" method="post" action="/peopleData/" accept-charset="UTF-8">
            <div class="form-group">
                <label class="control-label col-sm-2" for="name">Имя:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="name" placeholder="Введите имя" name="name">
                </div>
            </div>
            <br/>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-primary">Поиск</button>
                </div>
            </div>
        </form>


    <h3>Добавление пользователя</h3>


    <c:url var="addAction" value="/people/add"/>

    <form:form action="${addAction}" commandName="user"  role="form" accept-charset="UTF-8">

            <c:if test="${!empty user.name}">
                <div class="form-group">
                    <form:label path="id"  class="col-sm-2 control-label">ID</form:label>
                    <div class="col-sm-10">
                        <form:input path="id"  class="form-control"  readonly="true" size="12" disabled="true"/>
                        <form:hidden path="id"/>
                    </div>
                </div>

            </c:if>

        <div class="form-group">
            <form:label  class="col-sm-2 control-label" path="name" >Имя</form:label>
            <div class="col-sm-10">
                <form:input  class="form-control"   path="name"/>
            </div>
        </div>

        <div class="form-group">
            <form:label  class="col-sm-2 control-label" path="age">Возраст</form:label>
            <div class="col-sm-10">
                <form:input  class="form-control"  path="age"/>
            </div>
        </div>
        <div class="form-group">
            <form:label  class="col-sm-2 control-label" path="name">Админ</form:label>
            <div class="col-sm-10">
                <form:input  class="form-control"   path="admin"/>
            </div>
        </div>
        <c:if test="${!empty user.createdDate}">
            <div class="form-group">
                <form:label  class="col-sm-2 control-label" path="createdDate">Добавить</form:label>
                <div class="col-sm-10">
                    <form:input  class="form-control"  path="createdDate" readonly="true" size="12" disabled="true"/>
                </div>
            </div>
        </c:if>
            <td colspan="2">
                <c:if test="${!empty user.name}">
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary">Изменить данные</button>
                        </div>
                    </div>
                </c:if>
                <c:if test="${empty user.name}">
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary">Добавить пользователя</button>
                        </div>
                    </div>
                </c:if>


    </form:form>
</div>

    </div>

</div>
</body>
</html>