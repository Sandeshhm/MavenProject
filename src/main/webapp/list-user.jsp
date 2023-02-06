<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
<!DOCTYPE html>
<html>
<head>
 <title>User Management Application</title>
</head>
<body>
 
  <h1>User Management</h1>
        <h2>
         <a href="new">Add New User</a>
         &nbsp;&nbsp;&nbsp;
         <a href="list">List All Users</a>
         
        </h2>
 
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Users</h2></caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Country</th>
                <th>Actions</th>
            </tr>
            <d:forEach var="user" items="${listUser}">
                <tr>
                    <td><d:out value="${user.id}" /></td>
                    <td><d:out value="${user.name}" /></td>
                    <td><d:out value="${user.email}" /></td>
                    <td><d:out value="${user.country}" /></td>
                    <td>
                     <a href="edit?id=<c:out value='${user.id}' />">Edit</a>
                     &nbsp;&nbsp;&nbsp;&nbsp;
                     <a href="delete?id=<c:out value='${user.id}' />">Delete</a>                     
                    </td>
                </tr>
            </d:forEach>
        </table>
    </div> 
</body>
</html>