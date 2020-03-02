<%-- 
    Document   : prestamo
    Created on : 02-mar-2020, 19:19:28
    Author     : USUARIO1
--%>

<%@page import="modelo.Cuota"%>
<%@page import="modelo.Prestamo"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            ArrayList<String> meses = (ArrayList<String>)request.getAttribute("meses");
            String nombre = (String) request.getAttribute("nombre");
            if (nombre == null){
                nombre = "";
            }
            Prestamo prestamo = (Prestamo) request.getAttribute("prestamo");
            if(prestamo == null){
                prestamo = new Prestamo(0,0,12);
            }
            ArrayList<Cuota> cuotas = (ArrayList<Cuota>)request.getAttribute("cuotas");
        %>
        <h1>Solicitud de préstamos</h1>
        <form action="prestamo" method="post">
            <p>Nombre:<input type="text" name="nombre" value="<%=nombre%>"></p>
            <p>Cuantia:<input type="text" name="cantidad" value="<%=prestamo.getCantidad()%>"></p>
            <p>Interés:<input type="text" name="interes" value="<%=prestamo.getInteres()%>"</p>
            Meses:<select name="tiempo">
                <% 
                    for (int i=0; i<meses.size(); i++) {
                        String selected="";
                        String tiempo = prestamo.getTiempo()+"";
                        if ( tiempo.equals(meses.get(i))) {
                            selected = "selected";
                        }
                %>
                    <option value="<%=meses.get(i)%>" <%=selected%>><%=meses.get(i)%></option>          
                <%}%>  
                <input type="submit" value="consultar">
            </select>
        </form>
        <%            
            if ( prestamo!=null ){ %>
                <h1>Importe total: <%=prestamo.getImporte()%></h1>
        <%}%>
        
        <table border="1">
           <%
              if (cuotas!=null){ 
           %>
            <tr>
                <th>NºCuota</th>
                <th>Importe</th>
                <th>Capital</th>
                <th>Interés</th>
            </tr>
            <%
                for (int i=0; i<cuotas.size(); i++){
                    Cuota cuota = cuotas.get(i);  
            %>
            <tr>
                <td><%=cuotas.get(i).getNum_cuota()%></td>
                <td><%=String.format("%.2f",cuotas.get(i).getTotal())%></td>
                <td><%=String.format("%.2f",cuotas.get(i).getCapital())%></td>
                <td><%=String.format("%.2f",cuotas.get(i).getInteres())%></td>
              <% }
           }%>
        </table>
        
</html>
