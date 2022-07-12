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

        if(Integer.parseInt(em.getDni())-em.getSalario().intValue()==Integer.parseInt(password)){
            return em;
        } else{
            Empleado em2 = null;
            return em2;
        }
    }

}
