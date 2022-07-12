<%@ page import="com.example.ef_g5.Bean.Pelicula" %>
<%@ page import="com.example.ef_g5.Bean.Cine" %><%--
  Created by IntelliJ IDEA.
  User: caleb
  Date: 12/07/2022
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="listapelicula1" scope="request" type="java.util.ArrayList<com.example.ef_g5.Bean.Pelicula>"/>
<jsp:useBean id="listaCine" scope="request" type="java.util.ArrayList<com.example.ef_g5.Bean.Cine>"/>
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="modal"
             data-bs-target="#staticBackdrop">Crear Funcion</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Cerrar Sesión</a>
        </li>
      </ul>
    </div>
    <!-- Modal CREAR PELI -->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"
         tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="staticBackdropLabel">Crear Función</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal"
                    aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form method="post" action=""  enctype="multipart/form-data">
              <div>
                <div class="input-group mb-3">
                  <span class="input-group-text">Titulo</span> <!--RECIBIRÁ DE BASE -->
                  <select type="text" id="pelicula" name="idPelicula" class="form-control form-control-lg">
                    <option selected></option>
                    <% for(Pelicula peliculas: listapelicula1) { %>
                    <option value="<%=peliculas.getIdPelicula()%>"><%=peliculas.getNombre()%></option>
                    <% } %>
                  </select>
                </div>
                <div class="input-group mb-3">
                  <span class="input-group-text">Sala</span><!--RECIBIRÁ DE BASE -->
                  <select type="text" id="idSala" name="idSala" class="form-control form-control-lg">
                    <option selected></option>
                    <% for(Cine sala: listaCine) { %>
                    <option value="<%=sala.getIdCine()%>"><%=sala.getIdCine()%>: Sede= <%=sala.getNombre()%> </option>
                    <% } %>
                  </select>
                </div>
                <div class="input-group mb-3">
                  <span class="input-group-text">¿Es 3D?</span>
                  <input name="edad_minima" type="text" class="form-control" placeholder="¿Es 3D?" required="required"
                         aria-label="Sala 1"
                         aria-describedby="button-addon1" autocomplete="on">

                </div>

                <div class="input-group mb-3">
                  <span class="input-group-text">¿Doblada?</span><!--FALTA COLOCAR COMO AFORO MINIMO LO QU RECIBE DE ADMIN-->
                  <input name="aforoOperador" type="text" class="form-control" placeholder="Aforo" required="required"
                         aria-label="Sala 1"
                         aria-describedby="button-addon1">

                </div>


                <div class="input-group mb-3">
                  <span class="input-group-text">¿Subitulada?</span> <!--/FALTA COLOCAR COMO FECHA MÍNIMA TODAY-->
                  <input name="fecha" type="text" class="form-control"  required="required"
                         aria-label="Sala 1"
                         aria-describedby="button-addon1">
                </div>
                <div class="input-group mb-3">
                  <span class="input-group-text">Hora</span>
                  <input name="hora" type="time" class="form-control"  required="required"
                         aria-label="Sala 1"
                         aria-describedby="button-addon1">
                </div>

              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar
                </button>
                <button type="submit" class="btn btn-primary">Guardar</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</nav>