<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : jspl1
    Created on : 19/03/2015, 10:00:36 AM
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
        <h1>Hello World!</h1>
        <p>Este Texto Se Muestra Siempre</p>
                <c:if test="${param.mostrar == 'true'}" var="textoMostrado" scope="session">
                    <h2>Este Texto Solo Es Posible  si Mostrar Es igual a TRUE</h2>
                </c:if>
        <p>Este Texto Tambien Se Muestra Siempre</p>
    </body>
</html>
