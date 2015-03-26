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
    <h2>Datos Actualizados correctamente</h2>
   <sql:setDataSource
var="ds"
driver="org.apache.derby.jdbc.ClientDriver"
url="jdbc:derby://localhost:1527/sample"
user="app"
password="app"
/>
   
   <sql:transaction dataSource="${ds}">

<sql:update  var="prueba">
    Update prueba Set NOMBRE = 'maria' Where ID=2
</sql:update >
</sql:transaction>

      
        
    


