/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dto;


public class compraDTO {
        private int id;
        private String fecha;
        private int cantidad;
        private int precio;
        private String rut;
        private String cod_prod;

    public compraDTO() {
    }

    public compraDTO(int id) {
        this.id = id;
    }

    public compraDTO(int id, String fecha, int cantidad, int precio, String rut, String cod_prod) {
        this.id = id;
        this.fecha = fecha;
        this.cantidad = cantidad;
        this.precio = precio;
        this.rut = rut;
        this.cod_prod = cod_prod;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getCod_prod() {
        return cod_prod;
    }

    public void setCod_prod(String cod_prod) {
        this.cod_prod = cod_prod;
    }
        
        
}
