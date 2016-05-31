/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.productoDAO;
import dto.compraDTO;
import dto.productoDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Juan B. Yanez
 */
public class compraPaso2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //Titulo
        String titulo = "Ingresar Compra";
        
        //tirando los SKU
        
        String algo = (String) request.getParameter("radios");
        
        String error="";
        
        if (algo != null) {
            
            String div[] = algo.split("-");
            
            String pos = div[0].trim();
            String SKU = div[1].trim();
            
            String buscar = "txtCant"+pos;
            
//            if (buscar != null) {
//                String cantidad = (String) request.getParameter(buscar);
//                request.getSession().setAttribute("myExito", cantidad);
//                request.getRequestDispatcher("exito.jsp").forward(request, response);
//            }
            
            String cantidad = (String) request.getParameter(buscar).trim();
            
            if (cantidad.equals("")||cantidad==null) {
                error= "Ingresa una cantidad para el producto...";
                request.getSession().setAttribute("myError", error);
                request.getSession().setAttribute("myTitulo", titulo);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
            
            try {
                int cant = Integer.parseInt(cantidad);
                
                productoDAO dao = new productoDAO();
                productoDTO pDTO = dao.read(SKU);
                
                if (pDTO.getStock() >= cant && (pDTO.getStock() - cant) >= 0 ) {
                    
                    // ID - fecha - cantidad - Precio - rut - Cod_Producto
                    
                    String[] compra = {"001","30-may-2016",""+cant,""+(pDTO.getPrecio() * cant),"SKU" };
//                    compraDTO comprita = new compraDTO(1, "30-may-2016", cant, (cant*pDTO.getPrecio()), "x", SKU);
                    compraDTO comprita = new compraDTO("30-may-2016", cant, (cant*pDTO.getPrecio()), "x", SKU);
                    
                    
                    request.getSession().setAttribute("compra", comprita);
                    request.getSession().setAttribute("nomProd", pDTO.getNombre());
                    request.getSession().setAttribute("myTitulo", titulo);
                    request.getRequestDispatcher("compraPaso2.jsp").forward(request, response);                    
                    
                }else{
                    error= "Supera el Stock del producto...";
                    request.getSession().setAttribute("myError", error);
                    request.getSession().setAttribute("myTitulo", titulo);
                    request.getRequestDispatcher("error.jsp").forward(request, response);
                }
                
                
            } catch (NumberFormatException e) {
                error= "Deben ser cantidad númerica..";
                request.getSession().setAttribute("myError", error);
                request.getSession().setAttribute("myTitulo", titulo);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
            
            
            
            
        }
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
