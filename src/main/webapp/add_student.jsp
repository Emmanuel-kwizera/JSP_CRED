<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 5/11/2021
  Time: 10:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Students Management</title>
</head>
<body>
<center>
    <h1>Students Management</h1>
    <h2>
        <a class="add-new" href="/crud_war_exploded/new">Add New Student</a>
        &nbsp;&nbsp;&nbsp;
        <a class="list-all" href="/crud_war_exploded/list">List All Students</a>
    </h2>
</center>
<div class="add-student" align="center">
    <c:if test="${student != null}">
    <form action="insert" method="post">
        </c:if>
        <c:if test="${student == null}">
        <form action="insert" method="post">
            </c:if>
            <table cellpadding="5">
                <caption>
                    <h2>
                        <c:if test="${student != null}">
                            Edit Student
                        </c:if>
                        <c:if test="${student == null}">
                            Add Student
                        </c:if>
                    </h2>
                </caption>
                <c:if test="${student != null}">
                    <input type="hidden" name="id" value="<c:out value='${student.id}' />" />
                </c:if>
                <tr>
                    <th>First Name: </th>
                    <td>
                        <%--<input type="text" name="firstName" size="45"
                               value="<c:out value='${student.firstName}' />"
                        />--%>
                            <input type="text" name="firstName" size="45"/>
                    </td>
                </tr>
                <tr>
                    <th>Last Name: </th>
                    <td>
                        <%--<input type="text" name="lastName" size="45"
                               value="<c:out value='${student.lastName}' />"
                        />--%>
                            <input type="text" name="lastName" size="45"/>
                    </td>
                </tr>
                <tr>
                    <th>Gender: </th>
                    <td>
                        <%--<input type="text" name="gender" size="5"
                               value="<c:out value='${student.gender}' />"
                        />--%>
                            <input type="text" name="gender" size="5"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input class="save-btn" type="submit" value="Save" />
                    </td>
                </tr>
            </table>
        </form>
</div>
</body>
<style>
    .add-new{
        text-decoration: none;
        padding: .7rem;
        background: #009688;
        color: #fff;
        border-radius: .5rem;
        font-size: 1.225rem;
    }
    .list-all{
        text-decoration: none;
        padding: .7rem;
        background: #ff6b22;
        color: #fff;
        border-radius: .5rem;
        font-size: 1.225rem;
    }
    .add-student{
        padding-top: 2rem;
        padding-bottom: 5rem;
        margin-left: 15rem;
        margin-right: 15rem;
        box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
    }
    .save-btn{
        background: #009688;
        color: #ffffff;
        border: none;
        border-radius: .5rem;
        font-size: 1.225rem;
        padding: .5rem 1.5rem;
        font-weight: 100;
    }
</style>
</html>
