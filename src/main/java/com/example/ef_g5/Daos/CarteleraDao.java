package com.example.ef_g5.Daos;
import com.example.ef_g5.Bean.Cartelera;
import com.example.ef_g5.Bean.Cadena;
import com.example.ef_g5.Bean.Cine;
import com.example.ef_g5.Bean.Pelicula;
import com.example.ef_g5.DTO.CarteleraDTO;

import java.sql.*;
import java.util.ArrayList;

public class CarteleraDao extends BaseDao{

    public ArrayList<CarteleraDTO> listasPeliculas() {

        ArrayList<CarteleraDTO> listap = new ArrayList<>();

        String sql = "select c.nombre_comercial, ci.nombre, pe.nombre, ca.3d , ca.doblada, ca.subtitulada\n" +
                "from cadena c\n" +
                "left join cine ci on (ci.idcadena=c.idcadena) \n" +
                "left join cartelera ca on (ca.idcine=ci.idcine) \n" +
                "left join pelicula pe on (ca.idpelicula=pe.idpelicula);";


        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);) {
            try (ResultSet resultSet = pstmt.executeQuery();) {
                while (resultSet.next()) {
                    CarteleraDTO c = new CarteleraDTO();
                    c.setNombreComercial(resultSet.getString(1));
                    c.setNombreCine(resultSet.getString(2));
                    c.setNombrePelicula(resultSet.getString(3));
                    c.setTresD(resultSet.getInt(4));
                    c.setDoblada(resultSet.getInt(5));
                    c.setSubtitulada(resultSet.getInt(6));


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
