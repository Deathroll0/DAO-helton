/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dto;

/**
 *
 * @author Juan Yáñez (Juan B. Yanez)
 */
public class clienteDTO {
    private String rut;
    private String nombre;
    private int edad;

    public clienteDTO() {
    }

    public clienteDTO(String rut) {
        this.rut = rut;
    }

    public clienteDTO(String rut, String nombre, int edad) {
        this.rut = rut;
        this.nombre = nombre;
        this.edad = edad;
    }
    
    public String getRut() {
        return rut;
    }  

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }
    
    

}
