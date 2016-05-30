/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controlador;

import dao.clienteDAO;
import dao.productoDAO;
import dto.clienteDTO;
import dto.productoDTO;
import java.util.List;


public class pruebaProducto {
    
    public static void main(String[] args) {
       productoDAO p = new productoDAO();
//        
//        productoDTO pInsertar = new productoDTO("SKU100", "Ampolleta", 10);
//        
//        p.insertar(pInsertar);
        
        productoDTO pBuscado = p.read("888");
        System.out.println(pBuscado.getNombre());
        
        /**
        productoDAO p1 = new productoDAO();
        List<productoDTO> lista = p1.readAll();
        
        for (int i = 0; i < lista.size(); i++) {
            System.out.println(lista.get(i).getNombre());
        }
    
     **/
             /**    clienteDAO dao=new clienteDAO();
                 clienteDTO c=new clienteDTO("3", "3", 3);
                 if(dao.insertar(c))
                 {
                     System.out.println("ingresado bien");
                 }
                 else
                 {
                     System.out.println("ingresado mal");
                }**/
                 
        
    }
    
    

}
