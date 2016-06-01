/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.compraDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class eliminarCompra extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        String id = request.getParameter("txtId").trim(); 
        String error = "";
        String exito=""; 
        
        String titulo = "Eliminar Compra";
        
        if(id.equals("") || id==null)
        {      
            error="Ingresaste el campo vacío...";
            request.getSession().setAttribute("myError", error);
            request.getSession().setAttribute("myTitulo", titulo);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
        else
        {
            //Bug Nº13.434.213 el id nuúmero
            
                try{
                    int idParseo = Integer.parseInt(id);

                    compraDAO dao=new compraDAO();
                    if (dao.eliminar(idParseo)) 
                    {

                        exito="Se ha eliminado la compra correctamente!";
                        request.getSession().setAttribute("myExito", exito);
                        request.getSession().setAttribute("myTitulo", titulo);
                        request.getRequestDispatcher("exito.jsp").forward(request, response);

                    }
                    else
                    {
                        error = "No se encontró el ID que intentas eliminar..";
                        request.getSession().setAttribute("myError", error);
                        request.getSession().setAttribute("myTitulo", titulo);
                        request.getRequestDispatcher("error.jsp").forward(request, response);
                    }
                }catch(NumberFormatException err){
                    error = "El ID debe ser númerico...";
                    request.getSession().setAttribute("myError", error);
                    request.getSession().setAttribute("myTitulo", titulo);
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
