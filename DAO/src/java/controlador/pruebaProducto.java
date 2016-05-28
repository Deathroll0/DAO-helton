/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controlador;

import dao.productoDAO;
import dto.productoDTO;
import java.util.List;

/**
 *
 * @author Juan Yáñez (Juan B. Yanez)
 */
public class pruebaProducto {
    
    public static void main(String[] args) {
//        productoDAO p = new productoDAO();
//        
//        productoDTO pInsertar = new productoDTO("SKU100", "Ampolleta", 10);
//        
//        p.insertar(pInsertar);
        
//        productoDTO pBuscado = p.read("SKU100");
//        System.out.println(pBuscado.getNombre());
        
        
        productoDAO p1 = new productoDAO();
        List<productoDTO> lista = p1.readAll();
        
        for (int i = 0; i < lista.size(); i++) {
            System.out.println(lista.get(i).getNombre());
        }
    
        
    }
    
    

}
