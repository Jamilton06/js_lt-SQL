<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : jstl2
    Created on : 19/03/2015, 10:56:54 AM
    Author     : Ingenieria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page Inicial</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
    <c:choose>
        <c:when test="${param.txt_mostrar=='1'}">
            <h3>Caso Numero 1</h3>
        </c:when>
        <c:when test="${param.txt_mostrar=='2'}">
            <h3>Caso Numero 2</h3>
        </c:when>
        <c:when test="${param.txt_mostrar=='3'}">
            <h3>Caso Numero 3</h3>
        </c:when>
        <c:otherwise>
            <h3>No Ingresastes A Ninguna Opcion</h3>
        </c:otherwise>
    </c:choose>

    </body>
</html>
