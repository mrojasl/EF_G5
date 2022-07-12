<%@ page import="com.example.ef_g5.Dto.CarteleraDTO" %><%--
  Created by IntelliJ IDEA.
  User: Jon
  Date: 12/07/2022
  Time: 12:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="listaCartelera" scope="request" type="java.util.ArrayList<com.example.ef_g5.Dto.CarteleraDTO>"/>
<jsp:useBean id="empleadoLogueado" scope="session" class="com.example.ef_g5.Bean.Empleado"/>
<html>
    <head>
        <link rel="shortcut icon" href="https://cdn-icons.flaticon.com/png/512/826/premium/826070.png?token=exp=1656523939~hmac=95e0835542059253ef913f926ef83145">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>JSP - Hello World</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <!-- Custom fonts for this template-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!--link-->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>


        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
        <link rel = "icon" href =
                "https://assets.website-files.com/60b56cdf18d38e15ce088579/60c111551dc75d6dc896a30e_pucp-favicon.png"
              type = "image/x-icon">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <!--link--stars-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            body{
                background-position: right center;
            }
        </style>
    </head>
    <body>
        <jsp:include page="navbar.jsp">
            <jsp:param name="name" value="<%=empleadoLogueado.getNombre()%>"/>
            <jsp:param name="last" value="<%=empleadoLogueado.getApellido()%>"/>

        </jsp:include>

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
