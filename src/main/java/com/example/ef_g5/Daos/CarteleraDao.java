package com.example.ef_g5.Daos;
import com.example.ef_g5.Bean.Cartelera;

import java.sql.*;
import java.util.ArrayList;

public class CarteleraDao extends BaseDao{

    public ArrayList<Cartelera> listasPeliculas() {

        ArrayList<Cartelera> listap = new ArrayList<>();

        String sql = "";


        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);) {
            try (ResultSet resultSet = pstmt.executeQuery();) {
                while (resultSet.next()) {
                    Cartelera c = new Cartelera();


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
