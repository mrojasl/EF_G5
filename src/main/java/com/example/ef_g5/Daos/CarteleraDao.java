package com.example.ef_g5.Daos;
import com.example.ef_g5.Bean.Cine;
import com.example.ef_g5.Bean.Pelicula;
import com.example.ef_g5.DTO.CarteleraDTO;
import java.sql.*;
import java.util.ArrayList;

public class CarteleraDao extends BaseDao{
    //PREGUNTA 2 -> listar funciones
    public ArrayList<CarteleraDTO> listasPeliculas() {

        ArrayList<CarteleraDTO> listap = new ArrayList<>();

        String sql = "select c.nombre_comercial, ci.nombre, pe.nombre, ca.3d , ca.doblada, ca.subtitulada, ca.horario\n" +
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
                    c.setHorario(resultSet.getString(7));
                    listap.add(c);
                }
            }
        } catch (SQLException e) {
            System.out.println("Hubo un error en la conexión!");
            e.printStackTrace();
        }
        return listap;
    }

    //PARA PREGUNTA 3 -> CREAR CARTELERA
    public ArrayList<Pelicula> obtenerPeliculas() {

        ArrayList<Pelicula> listaPeliculas = new ArrayList<>();

        try (Connection conn = this.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM pelicula;");) {

            while (rs.next()) {
                Pelicula peliculas = new Pelicula();
                peliculas.setIdPelicula(rs.getInt(1));
                peliculas.setNombre(rs.getString(2));

                listaPeliculas.add(peliculas);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listaPeliculas;
    }
    public ArrayList<Cine> obtenerCine() {

        ArrayList<Cine> listaCine = new ArrayList<>();

        try (Connection conn = this.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT idcine, nombre FROM cine;");) {

            while (rs.next()) {
                Cine cine = new Cine();
                cine.setIdCine(rs.getInt(1));
                cine.setNombre(rs.getString(2));

                listaCine.add(cine);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listaCine;
    }
    private static String sql_crear_cartelera="INSERT INTO cartelera (idpelicula, idcine, 3d, doblada, subtitulada, horario) VALUES(?,?,?,?,?,?)";

    public void crearFuncion(CarteleraDTO cartelera) {


        try (Connection connection = this.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(sql_crear_cartelera);) {

            pstmt.setInt(1, cartelera.getIdPelicula());
            pstmt.setInt(2, cartelera.getIdCine());
            pstmt.setInt(3, cartelera.getTresD());
            pstmt.setInt(4, cartelera.getDoblada());
            pstmt.setInt(5, cartelera.getSubtitulada());
            pstmt.setString(6, cartelera.getHorario());

            pstmt.executeUpdate();

        }catch (SQLException error) {
            error.printStackTrace();
        }
    }
}
