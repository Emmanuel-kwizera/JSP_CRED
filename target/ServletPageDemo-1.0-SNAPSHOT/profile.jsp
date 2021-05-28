<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 5/28/2021
  Time: 7:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Title</title>
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
  <div class="information">
    <center><h2>Student Information</h2></center>
    <center>
      <p><b>First Name: </b><c:out value="${studentView.firstName}" /></p>
      <p><b>Last Name: </b><c:out value="${studentView.lastName}" /></p>
      <p><b>Gender: </b><c:out value="${studentView.gender}" /></p>
    </center>
  </div>
</body>
<style>
  /*.information p{*/
  /*  font-weight: 100;*/
  /*  font-size: 1.125rem;*/
  /*  line-height: 1.75rem;*/
  /*}*/
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
  .information{
    padding-top: 2rem;
    padding-bottom: 5rem;
    margin-left: 12rem;
    margin-right: 12rem;
    box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
  }
</style>
</html>