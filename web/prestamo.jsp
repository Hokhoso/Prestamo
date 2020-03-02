<%-- 
    Document   : prestamo
    Created on : 02-mar-2020, 19:19:28
    Author     : USUARIO1
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Solicitud de préstamos</h1>
        <form action="prestamo" method="post">
            <p>Nombre:<input type="text" name="nombre"></p>
            <p>Cuantia:<input type="text" name="cuantia"></p>
            <p>Interés:<input type="text" name="interes"></p>
            Meses:<select name="tiempo" id="tiempo">
                <% 
                    ArrayList<String> meses = (ArrayList<String>)request.getAttribute("meses");
                    for (int i=0; i<meses.size(); i++) {
                %>
                    <option value="<%=meses.get(i)%>"><%=meses.get(i)%></option>          
                <%}%>  
                <input type="submit" value="consultar">
            </select>
        </form>
        
</html>
