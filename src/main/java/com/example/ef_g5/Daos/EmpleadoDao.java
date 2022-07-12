package com.example.ef_g5.Daos;

import com.example.ef_g5.Bean.Cine;
import com.example.ef_g5.Bean.Empleado;
import com.example.ef_g5.Dto.CarteleraDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.*;
import java.util.ArrayList;

public class EmpleadoDao extends BaseDao{

    public Empleado validarPass(String dni, String password){
        Empleado em = null;

        String sql = "SELECT * FROM movies.empleado where dni = ?;";
        try (Connection connection = this.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(sql)) {

            pstmt.setString(1,dni);

            try(ResultSet rs = pstmt.executeQuery()){

                if(rs.next()) {
                    em = new Empleado();
                    Cine cine = new Cine();
                    em.setCine(cine);
                    Empleado jefe = new Empleado();
                    em.setJefe(jefe);

                    em.setIdEmpleado(rs.getInt(1));
                    em.setNombre(rs.getString(2));
                    em.setApellido(rs.getString(3));
                    em.setDni(rs.getString(4));
                    em.setSalario(rs.getBigDecimal(5));
                    em.setFechaContrato(rs.getString(6));
                    em.setNombreUsuario(rs.getString(7));
                    em.setEdad(rs.getInt(8));
                    em.setActivo(rs.getBoolean(9));
                    em.getCine().setIdCine(rs.getInt(10));
                    em.getJefe().setIdEmpleado(rs.getInt(11));
                }
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        try{if(Integer.parseInt(em.getDni())-em.getSalario().intValue()==Integer.parseInt(password)){
            return em;}
        else{
            Empleado em2 = null;
            return em2;
        }
        } catch (NullPointerException e) {
            Empleado em2 = null;
            return em2;
        }


    }

    public String ObtenerRol(int id){
        String sql = "select nombre from rol inner join rolempleado on (rol.idrol=rolempleado.idrol)\n" +
                "where idempleado=?;";

        String rol = null;

        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
        ) {
            pstmt.setInt(1, id);

            try (ResultSet rs = pstmt.executeQuery();) {
                while (rs.next()) {
                    rol = (rs.getString(1));
                }
            }

        } catch (SQLException error) {
            error.printStackTrace();
        }


        return rol;
    }











    // pregunta 4 CAntidad de empleados sin jefe
    public int  obtenerEmplSinJefe() {

        Integer num = null;
        String sql = "SELECT count(em.idempleado) as '# sin jefe'\n" +
                "FROM empleado em\n" +
                "where em.idjefe is null;";
        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);) {
            try (ResultSet resultSet = pstmt.executeQuery();) {
                while (resultSet.next()) {
                    num = resultSet.getInt(1);
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return num;
    }

    // lista de empleados sin jefe

    public ArrayList<Empleado> listasEmpleadosSinJefe() {

        ArrayList<Empleado> listap = new ArrayList<>();

        String sql = "SELECT em.nombre, em.apellido , em.idjefe\n" +
                "FROM empleado em\n" +
                "where em.idjefe is null;";

        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);) {
            try (ResultSet resultSet = pstmt.executeQuery();) {
                while (resultSet.next()) {
                    Empleado c = new Empleado();
                    c.setNombre(resultSet.getString(1));
                    c.setApellido(resultSet.getString(2));
                    listap.add(c);
                }
            }
        } catch (SQLException e) {
            System.out.println("Hubo un error en la conexión!");
            e.printStackTrace();
        }
        return listap;
    }

    // cantidad peliuclas 3d
    public int  obtenerPeli3d() {

        Integer num = null;
        String sql = "SELECT count(ca.idpelicula) FROM cartelera ca\n" +
                "where ca.3d is not null;";
        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);) {
            try (ResultSet resultSet = pstmt.executeQuery();) {
                while (resultSet.next()) {
                    num = resultSet.getInt(1);
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return num;
    }

    //Cantidad de cines cuyos empleados tengan un salario mayor a 9700 (solo el número)
    public int  CantidadEmpleadoMayor() {

        Integer num = null;
        String sql = "SELECT count(ci.nombre)\n" +
                "FROM empleado em\n" +
                "left join cine ci on (em.idcine=ci.idcine) \n" +
                "where em.salario > 9699;";
        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);) {
            try (ResultSet resultSet = pstmt.executeQuery();) {
                while (resultSet.next()) {
                    num = resultSet.getInt(1);
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return num;
    }

    // ##Cadena de cine con la mayor cantidad de películas en cartelera

    public ArrayList<CarteleraDTO> listasCadenaMayor() {

        ArrayList<CarteleraDTO> listap = new ArrayList<>();

        String sql = "select c.nombre_comercial, ci.nombre, count(pe.nombre) as 'cantidad'\n" +
                "from cadena c\n" +
                "left join cine ci on (ci.idcadena=c.idcadena) \n" +
                "left join cartelera ca on (ca.idcine=ci.idcine) \n" +
                "left join pelicula pe on (ca.idpelicula=pe.idpelicula)\n" +
                "group by  c.nombre_comercial, ci.nombre\n" +
                "order by count(pe.nombre) desc\n" +
                "limit 1;;";
        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);) {
            try (ResultSet resultSet = pstmt.executeQuery();) {
                while (resultSet.next()) {
                    CarteleraDTO c = new CarteleraDTO();
                    c.setNombreComercial(resultSet.getString(1));
                    c.setNombreCine(resultSet.getString(2));
                    listap.add(c);
                }
            }
        } catch (SQLException e) {
            System.out.println("Hubo un error en la conexión!");
            e.printStackTrace();
        }
        return listap;
    }



}
