package com.example.ef_g5.DTO;

public class CarteleraDTO {

    private String nombreComercial;
    private String nombreCine;
    private String nombrePelicula;
    private int tresD;
    private int doblada;
    private int subtitulada;

    public String getNombreComercial() {
        return nombreComercial;
    }

    public void setNombreComercial(String nombreComercial) {
        this.nombreComercial = nombreComercial;
    }

    public String getNombreCine() {
        return nombreCine;
    }

    public void setNombreCine(String nombreCine) {
        this.nombreCine = nombreCine;
    }

    public String getNombrePelicula() {
        return nombrePelicula;
    }

    public void setNombrePelicula(String nombrePelicula) {
        this.nombrePelicula = nombrePelicula;
    }

    public int getTresD() {
        return tresD;
    }

    public void setTresD(int tresD) {
        this.tresD = tresD;
    }

    public int getDoblada() {
        return doblada;
    }

    public void setDoblada(int doblada) {
        this.doblada = doblada;
    }

    public int getSubtitulada() {
        return subtitulada;
    }

    public void setSubtitulada(int subtitulada) {
        this.subtitulada = subtitulada;
    }
}
