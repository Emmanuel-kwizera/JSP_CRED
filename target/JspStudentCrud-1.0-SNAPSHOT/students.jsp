<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 5/14/2021
  Time: 7:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<div class="student-list" align="center">
    <table id="table" border="1" cellpadding="10">
        <caption><h2>List of Students</h2></caption>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Gender</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="student" items="${listStudent}">
            <tr>
                <td>${student.firstName}</td>
                <td><c:out value="${student.lastName}" /></td>
                <td><c:out value="${student.gender}" /></td>
                <td>
                    <a class="update" href="/crud_war_exploded/edit?id=<c:out value='${student.id}' />">Update</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a class="delete" href="/crud_war_exploded/delete?id=<c:out value='${student.id}' />">Delete</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a class="view" href="/crud_war_exploded/view?id=<c:out value='${student.id}' />">View More</a>
                </td>
            </tr>
        </c:forEach>
    </table>
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
    .student-list{
        padding-top: 2rem;
        padding-bottom: 5rem;
        margin-left: 12rem;
        margin-right: 12rem;
        box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
    }
    #table{
        border-collapse: collapse;
    }
    .update{
        text-decoration: none;
        padding: .4rem;
        background: #4cd964;
        color: #fff;
        border-radius: .3rem;
    }
    .delete{
        text-decoration: none;
        padding: .4rem;
        background: #ff3b30;
        color: #fff;
        border-radius: .3rem;
    }
    .view{
        text-decoration: none;
        padding: .4rem;
        background: #2196f3;
        color: #fff;
        border-radius: .3rem;
    }
</style>
</html>