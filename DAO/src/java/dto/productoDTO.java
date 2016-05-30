/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dto;


public class productoDTO {
    private String Cod_Producto;
    private String Nombre;
    private int Stock;
    private int precio;

    public productoDTO() {
    }

    public productoDTO(String Cod_Producto) {
        this.Cod_Producto = Cod_Producto;
    }

    public productoDTO(String Cod_Producto, String Nombre, int Stock, int precio) {
        this.Cod_Producto = Cod_Producto;
        this.Nombre = Nombre;
        this.Stock = Stock;
        this.precio = precio;
    }

    public String getCod_Producto() {
        return Cod_Producto;
    }

    public void setCod_Producto(String Cod_Producto) {
        this.Cod_Producto = Cod_Producto;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getStock() {
        return Stock;
    }

    public void setStock(int Stock) {
        this.Stock = Stock;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    
    
    

}
