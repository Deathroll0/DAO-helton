/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controlador;

import dao.clienteDAO;
import dto.clienteDTO;

/**
 *
 * @author Juan Yáñez (Juan B. Yanez)
 */
public class pruebaCrearCliente {
    public static void main(String[] args) {
        
        clienteDTO cDTO = new clienteDTO("17122", "Jota", 23);
        
        clienteDAO cDAO = new clienteDAO();
        
//        cDAO.insertar(cDTO);
        
        clienteDTO c2 = cDAO.read("17122");
        
        System.out.println(c2.getNombre());
    }

}
