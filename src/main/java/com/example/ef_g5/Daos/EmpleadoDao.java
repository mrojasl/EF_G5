package com.example.ef_g5.Daos;

import com.example.ef_g5.Bean.Cine;
import com.example.ef_g5.Bean.Empleado;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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

}
