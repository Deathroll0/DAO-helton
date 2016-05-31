/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.clienteDAO;
import dao.compraDAO;
import dao.productoDAO;
import dto.clienteDTO;
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
public class compraPaso3 extends HttpServlet {

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
        
        // Variables
        compraDTO compra = (compraDTO) request.getSession().getAttribute("compra");
        String rut = (String) request.getParameter("txtRut").trim();
        
        String error = "";
        String exito = "";
        
        if (rut.equals("") || rut==null) {
            error= "No ingresaste el rut...";
            request.getSession().setAttribute("myError", error);
            request.getSession().setAttribute("myTitulo", titulo);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }else{
            clienteDAO cDAO = new clienteDAO();
            clienteDTO clienteDTO = cDAO.read(rut);

            if (clienteDTO == null) {
                error= "Cliente no encotrado";
                request.getSession().setAttribute("myError", error);
                request.getSession().setAttribute("myTitulo", titulo);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }else{
                //Ahora si último paso

                productoDAO proDAO = new productoDAO();
                productoDTO pordBuscarStock = proDAO.read(compra.getCod_prod());

                if ( pordBuscarStock.getStock() - compra.getCantidad() >= 0 ) {

                    pordBuscarStock.setStock(pordBuscarStock.getStock() - compra.getCantidad());

                    proDAO.modificar(pordBuscarStock);


                    compraDAO compritaDAO = new compraDAO();
                    compraDTO compritaDTO = new compraDTO(compra.getFecha(), compra.getCantidad(), compra.getPrecio(), rut, compra.getCod_prod());
                    if (compritaDAO.insertar(compritaDTO)) {
                        exito= "Se realizó la compra perfectamente!";
                        request.getSession().setAttribute("myExito", exito);
                        request.getRequestDispatcher("exito.jsp").forward(request, response);
                    }else{
                        error= "No se realizó la compra...";
                        request.getSession().setAttribute("myError", error);
                        request.getRequestDispatcher("error.jsp").forward(request, response);
                    }


                }else{
                    error= "Mala suerte el stock cambió...";
                    request.getSession().setAttribute("myError", error);
                    request.getRequestDispatcher("error.jsp").forward(request, response);
                }

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
