<%@page import="com.Beans.EstudianteBean"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : jstl3
    Created on : 25/03/2015, 07:39:44 AM
    Author     : Ingenieria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ArrayList<EstudianteBean> listaEstudiantes = new ArrayList<EstudianteBean>();
            listaEstudiantes.add(new EstudianteBean("Jamilton","Meneses"));
            listaEstudiantes.add(new EstudianteBean("Fernando","Hernandez"));
            listaEstudiantes.add(new EstudianteBean("Oscar","Burbano"));
            
            session.setAttribute("listaEstudiantes", listaEstudiantes);
        %>
        <h1>Hello World!</h1>
        <table border="1">
            <tr>
                <td>Nombres</td>
                <td>Apellidos</td>
            </tr>
             <c:forEach var="estudiante" items="${sessionScope.listaEstudiantes}">
            <tr>
                <td>${estudiante.nombres}</td>
                <td>${estudiante.apellidos}</td>
            </tr>
           
                
            </c:forEach>
        </table>
    </body>
</html>
