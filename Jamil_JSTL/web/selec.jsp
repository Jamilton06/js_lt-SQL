<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : ingresr
    Created on : 26/03/2015, 09:36:32 AM
    Author     : Ingenieria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <p>Consulta realizada con exito</p>
   <sql:setDataSource var="ds" driver="org.apache.derby.jdbc.ClientDriver" 
                      url="jdbc:derby://localhost:1527/sample" user="app" password="app" />
   <sql:transaction dataSource="${ds}">
        <sql:query var="prueba">
            SELECT * FROM prueba
        </sql:query>
    </sql:transaction>

        <table>
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Apellido</th>
            </tr>
            <c:forEach var="item" items="${prueba.rows}">
                <tr>
                    <td><c:out value="${item.id}"/></td>
                    <td><c:out value="${item.nombre}"/></td>
                    <td><c:out value="${item.apellido}"/></td>
                </tr>
            </c:forEach>
        </table>
        
    

