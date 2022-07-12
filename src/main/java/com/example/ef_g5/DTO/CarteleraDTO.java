package com.example.ef_g5.Dto;

public class CarteleraDTO {

    private String nombreComercial;
    private String nombreCine;
    private String nombrePelicula;
    private int idPelicula;
    private int idCine;

    private int tresD;
    private int doblada;
    private int subtitulada;
    private String horario;

    public int getIdPelicula() {
        return idPelicula;
    }

    public void setIdPelicula(int idPelicula) {
        this.idPelicula = idPelicula;
    }

    public int getIdCine() {
        return idCine;
    }

    public void setIdCine(int idCine) {
        this.idCine = idCine;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

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
