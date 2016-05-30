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

    public productoDTO(String Cod_Producto, String Nombre, int Stock) {
        this.Cod_Producto = Cod_Producto;
        this.Nombre = Nombre;
        this.Stock = Stock;
    }

    public productoDTO(String Cod_Producto) {
        this.Cod_Producto = Cod_Producto;
    }

    public productoDTO() {
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
    
    

}
