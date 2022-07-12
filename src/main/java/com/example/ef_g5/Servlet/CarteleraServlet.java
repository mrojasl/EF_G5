package com.example.ef_g5.Servlet;

import com.example.ef_g5.Bean.Empleado;
import com.example.ef_g5.Daos.CarteleraDao;
import com.example.ef_g5.Dto.CarteleraDTO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "VendedorServlet", value = "/CarteleraServlet")
public class CarteleraServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action") == null ? "cartelera" : request.getParameter("action");
        Empleado empleadoLogueado = (Empleado) request.getSession().getAttribute("empleadoLogueado");
        CarteleraDao carteleraDao = new CarteleraDao();
        RequestDispatcher requestDispatcher;

        switch (action) {
            case "cartelera" ->{
                request.setAttribute("listaCartelera", carteleraDao.listasPeliculas());
                requestDispatcher = request.getRequestDispatcher("cartelera.jsp");
                requestDispatcher.forward(request, response);
            }



        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
