package com.example.ef_g5.Servlet;

import com.example.ef_g5.Bean.Empleado;
import com.example.ef_g5.Daos.CarteleraDao;
import com.example.ef_g5.Dto.CarteleraDTO;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.ws.rs.core.Request;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Array;
import java.sql.SQLException;
import java.util.ArrayList;


@MultipartConfig
@WebServlet(name = "VendedorServlet", value = "/CarteleraServlet")
public class CarteleraServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String action = request.getParameter("action") == null ? "cartelera" : request.getParameter("action");
        Empleado empleadoLogueado = (Empleado) request.getSession().getAttribute("empleadoLogueado");
        CarteleraDao carteleraDao = new CarteleraDao();
        RequestDispatcher requestDispatcher;

        switch (action) {
            case "cartelera" ->{
                request.setAttribute("listaCartelera", carteleraDao.listasPeliculas());

                //PARTE PARA CREAR CATELERA
                request.setAttribute("listapelicula1",carteleraDao.obtenerPeliculas());
                request.setAttribute("listaSalas", carteleraDao.obtenerCine());
                //FIN
                requestDispatcher = request.getRequestDispatcher("cartelera.jsp");
                requestDispatcher.forward(request, response);
            }



        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action") == null ? "redireccionar" : request.getParameter("action");
        CarteleraDao carteleraDao = new CarteleraDao();
        RequestDispatcher requestDispatcher;
        CarteleraDTO carteleraDTO;

        switch (action){
            case "crearFunciones"->{
                carteleraDTO =new CarteleraDTO();
                carteleraDTO.setIdPelicula(Integer.parseInt(request.getParameter("idPelicula")));
                carteleraDTO.setIdCine(Integer.parseInt(request.getParameter("idcine")));
                carteleraDTO.setTresD(Integer.parseInt(request.getParameter("3d")));
                carteleraDTO.setDoblada(Integer.parseInt(request.getParameter("doblada")));
                carteleraDTO.setSubtitulada(Integer.parseInt(request.getParameter("subtitulada")));
                carteleraDTO.setHorario(request.getParameter("horarios"));
                carteleraDao.crearCartelera(carteleraDTO);

                response.sendRedirect("OperadorServlet");
            }
        }
    }
}
