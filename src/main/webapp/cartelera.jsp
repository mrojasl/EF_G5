<%@ page import="com.example.ef_g5.Dto.CarteleraDTO" %><%--
  Created by IntelliJ IDEA.
  User: Jon
  Date: 12/07/2022
  Time: 12:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="listaCartelera" scope="request" type="java.util.ArrayList<com.example.ef_g5.Dto.CarteleraDTO>"/>
<html>
    <head>
        <title>Cartelera</title>
    </head>
    <body>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Cadena</th>
                    <th scope="col">Cine</th>
                    <th scope="col">Película</th>
                    <th scope="col">Horario</th>
                </tr>
            </thead>
            <tbody>
                <%for (CarteleraDTO c : listaCartelera){%>
                <tr>
                    <td><%=c.getNombreComercial()%></td>
                    <td><%=c.getNombreCine()%></td>
                    <td><%=c.getNombrePelicula()%><%if(c.getTresD()==1 || c.getDoblada()==1){%> - <%}%>  <%if(c.getTresD()==1){%>3D<%}%> <%if(c.getDoblada()==1){%>Doblada<%}%>
                    </td>
                    <td><%=c.getHorario()%></td>
                </tr>
                <%}%>
            </tbody>
        </table>
    </body>
</html>
